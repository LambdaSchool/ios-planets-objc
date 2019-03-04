//
//  JDBSettingsViewController.m
//  Obj-C-Planets
//
//  Created by Madison Waters on 3/4/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "JDBSettingsViewController.h"

@interface JDBSettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *showPlutoSwitch;

- (IBAction)doneButton:(id)sender;
- (IBAction)plutoSwitch:(id)sender;

@end

@implementation JDBSettingsViewController

- (IBAction)doneButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)plutoSwitch:(id)sender {
    [self updateViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateViews];
}

- (void)updateViews {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:self.showPlutoSwitch.isOn forKey:@"ShouldShowPluto"];
}

@end
