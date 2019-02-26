//
//  SettingsViewController.m
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "JDBSettingsViewController.h"

@interface JDBSettingsViewController ()

@end

@implementation JDBSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    _showPlutoSwitch.on = [userDefaults boolForKey:@"ShouldShowPluto"];
}

-(IBAction)doneButton:(UIButton*)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)plutoSwitch:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_showPlutoSwitch.on forKey:@"ShouldShowPluto"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
