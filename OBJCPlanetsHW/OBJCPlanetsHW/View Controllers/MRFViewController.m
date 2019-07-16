//
//  MRFViewController.m
//  OBJCPlanetsHW
//
//  Created by Michael Flowers on 7/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import "MRFViewController.h"
#import "MRFPlanetController.h"

@interface MRFViewController ()

@end

@implementation MRFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (IBAction)doneButtonPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)switchValueChanged:(UISwitch *)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_switchValue.on forKey:@"ShouldShowPluto"];
}

- (void)updateViews
{
    [self.switchValue setOn: [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"]];
}

@end
