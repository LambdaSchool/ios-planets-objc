//
//  KRCSettingsViewController.m
//  Planets
//
//  Created by Christopher Aronson on 7/15/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCSettingsViewController.h"

@interface KRCSettingsViewController ()

@end

@implementation KRCSettingsViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL isPlutoAPlanet = [defaults boolForKey:@"isPlutoAPlanet"];
    
    [[self plutoSwitch] setOn:isPlutoAPlanet];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switchValueChanged:(UISwitch *)sender {
    
    if ([sender isOn]) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setBool:YES forKey:@"isPlutoAPlanet"];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setBool:NO forKey:@"isPlutoAPlanet"];
    }
}

- (IBAction)doneButtonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
