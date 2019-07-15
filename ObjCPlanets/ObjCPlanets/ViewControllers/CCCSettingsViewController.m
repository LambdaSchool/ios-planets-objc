//
//  CCCSettingsViewController.m
//  ObjCPlanets
//
//  Created by Ryan Murphy on 7/15/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import "CCCSettingsViewController.h"

@interface CCCSettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;



- (IBAction)changeShouldShowPluto:(id)sender;

@end

@implementation CCCSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.plutoSwitch.on = [defaults boolForKey:@"PlutoStatus"];
}


- (IBAction)changeShouldShowPluto:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.plutoSwitch.isOn forKey:@"PlutoStatus"];
}

@end
