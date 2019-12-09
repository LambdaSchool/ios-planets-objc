//
//  JLRSettingsViewController.m
//  PlanetsProject
//
//  Created by Jesse Ruiz on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRSettingsViewController.h"

@interface JLRSettingsViewController ()

@end

@implementation JLRSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    _shouldShowPluto.on = [userDefaults boolForKey:@"shouldShowPluto"];
}

- (IBAction)switchTapped:(UISwitch *)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_shouldShowPluto.on forKey:@"shouldShowPluto"];
}

- (IBAction)doneTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
