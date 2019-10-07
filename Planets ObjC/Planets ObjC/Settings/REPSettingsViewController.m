//
//  REPSettingsViewController.m
//  Planets ObjC
//
//  Created by Michael Redig on 10/7/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPSettingsViewController.h"

@interface REPSettingsViewController () {

}
@property (strong, nonatomic) IBOutlet UISwitch *plutoSwitch;
@property (strong, nonatomic) IBOutlet UIButton *doneButton;

@end

@implementation REPSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	[self updateViews];
}

- (void)updateViews {
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	BOOL isPlanet = [defaults boolForKey:@"plutoIsPlanet"];
	[_plutoSwitch setOn:isPlanet];
}

- (IBAction)plutoSwitchChanged:(UISwitch *)sender {
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	[defaults setBool:sender.isOn forKey:@"plutoIsPlanet"];
}

- (IBAction)doneButtonPressed:(UIButton *)sender {
	[self dismissViewControllerAnimated:true completion:nil];
}

@end
