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
//	NSLog(@"%@ \n", sender);
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	if (_plutoIsPlanet) {
		[defaults setBool:NO forKey:@"plutoIsPlanet"];
	} else {
	
		[defaults setBool:YES forKey:@"plutoIsPlanet"];
	}
	
	
	[defaults synchronize];

}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
