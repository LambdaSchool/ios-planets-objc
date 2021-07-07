//
//  MUSettingsViewController.m
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import "MUSettingsViewController.h"

@interface MUSettingsViewController ()

@end

@implementation MUSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismissSettings:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)shouldSwitchPluto:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool: [[self plutoSwitch ] isOn] forKey:@"ShouldShowPlutoKey"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)updateViews {
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPlutoKey"];
    [[self plutoSwitch] setOn:shouldShowPluto animated:true];
}
@end
