//
//  GIPSettingsViewController.m
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPSettingsViewController.h"

@interface GIPSettingsViewController ()

@end

@implementation GIPSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _userDefaults = [NSUserDefaults standardUserDefaults];
    self.isPlutoPlanetSwitch.on = [self.userDefaults boolForKey:@"IsPlutoPlanet"];
}

- (IBAction)doneButtonPressed:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:true];
}

- (IBAction)isPlutoPlanetSwitchChanged:(id)sender {
    [self.userDefaults setBool:self.isPlutoPlanetSwitch.isOn forKey:@"IsPlutoPlanet"];
}


@end
