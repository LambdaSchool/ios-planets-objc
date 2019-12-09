//
//  LSISettingsViewController.m
//  Planets Obj-C
//
//  Created by Isaac Lyons on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSISettingsViewController.h"

@interface LSISettingsViewController ()

@end

@implementation LSISettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [self.plutoSwitch setOn:[defaults boolForKey:@"pluto"]];
}

- (IBAction)done:(UIButton *)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:[self.plutoSwitch isOn] forKey:@"pluto"];
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
