//
//  OSISettingsViewController.m
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "OSISettingsViewController.h"

@interface OSISettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *switchOutlet;
- (IBAction)switchAction:(id)sender;
- (IBAction)doneButton:(id)sender;

@end

@implementation OSISettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.switchOutlet.on = [defaults boolForKey:@"PlutoStatus"];
}


- (IBAction)switchAction:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.switchOutlet.isOn forKey:@"PlutoStatus"];
}

- (IBAction)doneButton:(id)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}
@end
