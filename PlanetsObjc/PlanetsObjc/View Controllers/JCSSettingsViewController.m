//
//  JCSSettingsViewController.m
//  PlanetsObjc
//
//  Created by Lambda_School_Loaner_95 on 4/1/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSSettingsViewController.h"
#import <UIKit/UIKit.h>

@interface JCSSettingsViewController ()

@end

@implementation JCSSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    // Do any additional setup after loading the view.
}

-(void)updateViews {
     [self.planetSwitch setOn: [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"]];
}

- (IBAction)planetSwitchTapped:(id)sender {
    
    BOOL shouldShowPluto = _planetSwitch.isOn;
    
    [[NSUserDefaults standardUserDefaults] setBool:shouldShowPluto forKey:@"ShouldShowPluto"];
}

- (IBAction)doneTapped:(id)sender {
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
