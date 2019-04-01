//
//  NYCSettingsViewController.m
//  PlanetsObjectiveC
//
//  Created by Nathanael Youngren on 4/1/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCSettingsViewController.h"

@interface NYCSettingsViewController ()

@end

@implementation NYCSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if ([defaults boolForKey:@"shouldShowPluto"] == true) {
        [_plutoSwitch setOn:YES];
    } else {
        [_plutoSwitch setOn:NO];
    }
}

- (IBAction)doneButtonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)plutoSwitchValueChanged:(UISwitch *)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setBool:[sender isOn] forKey:@"shouldShowPluto"];
}

@end
