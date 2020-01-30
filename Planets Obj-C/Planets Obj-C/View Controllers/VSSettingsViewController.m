//
//  VSSettingsViewController.m
//  Planets Obj-C
//
//  Created by Vici Shaweddy on 1/29/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VSSettingsViewController.h"
#import "VSSettingsKeys.h"

@interface VSSettingsViewController ()

@end

@implementation VSSettingsViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)updateViews {
    // let userDefaults: UserDefaults = UserDefaults.standard
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [self.shouldShowPlutoSwitch setOn:[userDefaults boolForKey:kShouldShowPlutoKey]];
}

- (IBAction)changeShouldShowPluto:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [self.shouldShowPlutoSwitch setOn:[userDefaults boolForKey:kShouldShowPlutoKey]];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"plutoPlanetStatsChanged" object:nil];
}

- (IBAction)donePressed:(id)sender {
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
