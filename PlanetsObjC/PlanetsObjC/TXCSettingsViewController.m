//
//  TXCSettingsViewController.m
//  PlanetsObjC
//
//  Created by Thomas Cacciatore on 7/15/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCSettingsViewController.h"
#import <UIKit/UIKit.h>

@interface TXCSettingsViewController ()

@end

@implementation TXCSettingsViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateViews];
}

- (void)updateViews {
    [self.shouldShowPlutoSwitch setOn: [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPlutoKey"]];
}

- (IBAction)plutoSwitchToggled:(id)sender {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool: _shouldShowPlutoSwitch.isOn forKey:@"ShouldShowPlutoKey"];
    [userDefaults synchronize];
    
    NSLog(@"User Default Value is: %d", [userDefaults boolForKey:@"ShouldShowPlutoKey"]);
}

- (IBAction)doneButtonTapped:(id)sender {
    // Dismiss view controller
}
@end
