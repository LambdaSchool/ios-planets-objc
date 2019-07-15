//
//  MGBSettingsViewController.m
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBSettingsViewController.h"

@interface MGBSettingsViewController ()

@end

@implementation MGBSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    _changeShouldShowPlutoSwitch.on = [userDefaults boolForKey:@"shouldShowPluto"];
}

- (IBAction)changeShouldShowPluto:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_changeShouldShowPlutoSwitch.on forKey:@"shouldShowPluto"];
}

- (IBAction)doneButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
