//
//  HHSettingsViewController.m
//  Planets
//
//  Created by Hayden Hastings on 7/15/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHSettingsViewController.h"

@interface HHSettingsViewController ()

@end

@implementation HHSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    _shouldShowPlutoSwitch.on = [userDefaults boolForKey:@"shouldShowPluto"];
}

- (IBAction)switchButtonTapped:(UISwitch *)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_shouldShowPlutoSwitch.on forKey:@"shouldShowPluto"];
}

- (IBAction)doneButtonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
