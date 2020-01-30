//
//  SettingsViewController.m
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "SettingsViewController.h"

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    _plutoSwitch.on = [defaults boolForKey:@"ShouldShowPlutoKey"];
    
}

- (IBAction)showPlutoSwitched:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:_plutoSwitch.isOn forKey:@"ShouldShowPlutoKey"];
    
}
@end
