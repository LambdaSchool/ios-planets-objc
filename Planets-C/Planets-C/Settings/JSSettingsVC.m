//
//  JSSettingsVC.m
//  Planets-C
//
//  Created by Jeffrey Santana on 10/7/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSSettingsVC.h"

#define IncludePlutoKey @"IncludePluto"

@interface JSSettingsVC ()

@end

@implementation JSSettingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.defaults = [NSUserDefaults standardUserDefaults];
	self.plutoSwitch.on = [self.defaults objectForKey:IncludePlutoKey];
}

- (IBAction)doneBtnTapped:(id)sender {
    [self.defaults setBool:self.plutoSwitch.isOn forKey:IncludePlutoKey];
	
	[self.navigationController popViewControllerAnimated:YES];
}
@end
