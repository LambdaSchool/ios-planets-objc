//
//  DYPSettingsViewController.m
//  PlanetsObjC
//
//  Created by Daniela Parra on 11/10/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPSettingsViewController.h"

@interface DYPSettingsViewController ()

@end

@implementation DYPSettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews
{
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"];
    
    [_isPlutoAPlanetSwitch setOn:shouldShowPluto];
}

- (IBAction)didUpdatePluto:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:[_isPlutoAPlanetSwitch isOn] forKey:@"ShouldShowPluto"];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
