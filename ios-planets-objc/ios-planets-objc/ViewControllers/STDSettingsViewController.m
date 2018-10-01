//
//  STDSettingsViewController.m
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDSettingsViewController.h"

@interface STDSettingsViewController ()

@end

@implementation STDSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_plutoSwitchIsOn setOn:[[NSUserDefaults standardUserDefaults] boolForKey:@"shouldShowPlutoKey"]];
}

- (IBAction)plutoSwitch:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:[sender isOn] forKey:@"shouldShowPlutoKey"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"hi" object:nil];
}
    
- (IBAction)doneButton:(id)sender
{
    //[[self navigationController] popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}
    @end
