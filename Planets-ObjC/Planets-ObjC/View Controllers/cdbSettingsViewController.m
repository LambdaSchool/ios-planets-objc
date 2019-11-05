//
//  cdbSettingsViewController.m
//  Planets-ObjC
//
//  Created by Ciara Beitel on 11/5/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "cdbSettingsViewController.h"

@interface cdbSettingsViewController ()

@end

@implementation cdbSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"isPlutoPlanet"]) {
            [_isPlutoPlanetSwitch setOn:YES animated:YES];
        } else {
            [_isPlutoPlanetSwitch setOn:false animated:YES];
        }
}

- (IBAction)doneButton:(UIButton *)sender {
    if ([_isPlutoPlanetSwitch isOn]) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"isPlutoPlanet"];
    } else {
        [[NSUserDefaults standardUserDefaults] setBool:false forKey:@"isPlutoPlanet"];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
