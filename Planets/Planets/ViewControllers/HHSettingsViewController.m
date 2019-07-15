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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)switchButtonTapped:(UISwitch *)sender {
}

- (IBAction)doneButtonTapped:(UIButton *)sender {
}
@end
