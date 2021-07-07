//
//  PCYSettingsViewController.m
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYSettingsViewController.h"

@interface PCYSettingsViewController ()

    @property (weak, nonatomic) IBOutlet UISwitch *showPluto;

@end

@implementation PCYSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    _showPluto.on = [userDefaults boolForKey:@"ShouldShowPluto"];
    
}

- (IBAction)toggleShowPluto:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_showPluto.on forKey:@"ShouldShowPluto"];
}


- (IBAction)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
