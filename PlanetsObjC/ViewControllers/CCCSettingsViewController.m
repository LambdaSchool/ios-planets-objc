//
//  CCCSettingsViewController.m
//  ObjCPlanets
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
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
