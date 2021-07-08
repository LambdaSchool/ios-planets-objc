//
//  DRMSettingsViewController.m
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMSettingsViewController.h"

@interface DRMSettingsViewController ()

@end

@implementation DRMSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.isPlutoPlanetSwitch setOn:[_planetController shouldShowPluto]];
}

- (IBAction)dismissSettings:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)togglePlutoIsPlanet:(UISwitch *)sender {
    [_planetController setShouldShowPluto:sender.isOn];
}
@end
