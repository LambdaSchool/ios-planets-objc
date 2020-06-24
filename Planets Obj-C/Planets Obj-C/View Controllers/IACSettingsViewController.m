//
//  SettingsViewController.m
//  Planets Obj-C
//
//  Created by Ivan Caldwell on 2/25/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import "IACSettingsViewController.h"

@interface IACSettingsViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

// Action for toggle switch
- (IBAction)plutoSettingDidChange:(id)sender;
// Dismiss action for our "Done" button
//- (IBAction)dimissSettings:(id)sender;

@end


@implementation IACSettingsViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.plutoSwitch.on = [defaults boolForKey:@"PlutoStatus"];
}


- (IBAction)plutoSettingDidChange:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.plutoSwitch.isOn forKey:@"PlutoStatus"];
}

//- (IBAction)dimissSettings:(id)sender {}



@end
