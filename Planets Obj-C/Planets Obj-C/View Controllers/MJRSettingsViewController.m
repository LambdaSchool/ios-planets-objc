//
//  MJRSettingsViewController.m
//  Planets Obj-C
//
//  Created by Moses Robinson on 3/25/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "MJRSettingsViewController.h"

@interface MJRSettingsViewController ()

@end

@implementation MJRSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    [self updateViews];
}

- (void)updateViews {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [_plutoSwitch setOn: [userDefaults boolForKey: @"ShouldShowPluto"]];
}

- (IBAction)plutoSwitched:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool: [sender isOn] forKey: @"ShouldShowPluto"];
}

- (IBAction)doneTapped:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}
@end
