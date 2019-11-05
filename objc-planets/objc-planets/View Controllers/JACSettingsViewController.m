//
//  JACSettingsViewController.m
//  objc-planets
//
//  Created by Jordan Christensen on 11/5/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACSettingsViewController.h"

@interface JACSettingsViewController ()

@end

@implementation JACSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"isPlutoPlanet"]) {
        [_isPlutoPlanetSwitch setOn:YES animated:YES];
    } else {
        [_isPlutoPlanetSwitch setOn:false animated:YES];
    }
}

- (IBAction)saveTapped:(id)sender {
    if ([_isPlutoPlanetSwitch isOn]) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"isPlutoPlanet"];
    } else {
        [[NSUserDefaults standardUserDefaults] setBool:false forKey:@"isPlutoPlanet"];
    }
    
    [self.navigationController popViewControllerAnimated:true];
}

@end
