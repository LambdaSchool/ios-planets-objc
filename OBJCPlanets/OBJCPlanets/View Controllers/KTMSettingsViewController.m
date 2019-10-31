//
//  KTMSettingsViewController.m
//  OBJCPlanets
//
//  Created by Kobe McKee on 7/15/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "KTMSettingsViewController.h"

@interface KTMSettingsViewController ()
@end

@implementation KTMSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateViews];
}

- (void)updateViews {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [_plutoSwitch setOn: [userDefaults boolForKey: @"ShouldShowPluto"]];
}

- (IBAction)togglePluto:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool: [sender isOn] forKey:@"ShouldShowPluto"];
    
}
- (IBAction)donePressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
    
    
}
@end
