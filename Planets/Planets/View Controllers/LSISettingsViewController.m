//
//  LSISettingsViewController.m
//  Planets
//
//  Created by Hector Steven on 7/15/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "LSISettingsViewController.h"

@interface LSISettingsViewController ()

@end

@implementation LSISettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	_plutoIsPlanet = [defaults integerForKey:@"plutoIsPlanet"];
	
	if (_plutoIsPlanet) {
		[_plutoSwitch setOn: YES];
	} else {
		[_plutoSwitch setOn: NO];
	}
}


- (IBAction)switchValueChanged:(id)sender {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	if (_plutoIsPlanet) {
		[defaults setBool:NO forKey:@"plutoIsPlanet"];
	} else {
	
		[defaults setBool:YES forKey:@"plutoIsPlanet"];
	}
	
	[defaults synchronize];
}

@end
