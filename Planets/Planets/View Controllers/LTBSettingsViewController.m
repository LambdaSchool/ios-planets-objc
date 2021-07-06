//
//  LTBSettingsViewController.m
//  Planets
//
//  Created by Linh Bouniol on 10/1/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBSettingsViewController.h"

@interface LTBSettingsViewController ()

@end

@implementation LTBSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // make sure switch follows the user defaults
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    _shouldShowPlutoSwitch.on = [userDefaults boolForKey:@"ShouldShowPluto"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)changeShouldShowPluto:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_shouldShowPlutoSwitch.on forKey:@"ShouldShowPluto"];
}

- (IBAction)done:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
