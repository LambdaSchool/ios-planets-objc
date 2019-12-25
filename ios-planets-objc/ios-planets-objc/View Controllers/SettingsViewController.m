//
//  SettingsViewController.m
//  ios-planets-objc
//
//  Created by Conner on 10/1/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateViews];
}

- (IBAction)changeShouldShowPluto:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:[sender isOn] forKey:@"ShouldShowPluto"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)updateViews {
    BOOL isOn = [[NSUserDefaults standardUserDefaults]
                            boolForKey:@"ShouldShowPluto"];
    [[self shouldShowPlutoSwitch] setOn:isOn];
}

@end
