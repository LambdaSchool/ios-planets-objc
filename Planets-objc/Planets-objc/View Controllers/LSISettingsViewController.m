//
//  SettingsViewController.m
//  Planets-objc
//
//  Created by Lambda_School_Loaner_204 on 1/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSISettingsViewController.h"

@interface LSISettingsViewController ()

@end

@implementation LSISettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateViews];

}

- (IBAction)doneButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

- (IBAction)shouldShowPlutoSwitch:(id)sender {
    [NSUserDefaults.standardUserDefaults setBool:_plutoSwitch.isOn forKey:@"ShouldShowPluto"];
}

- (void)updateViews {
    [_plutoSwitch setOn:[NSUserDefaults.standardUserDefaults boolForKey:@"ShouldShowPluto"]];
}

@end
