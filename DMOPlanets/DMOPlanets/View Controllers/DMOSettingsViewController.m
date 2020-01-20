//
//  DMOSettingsViewController.m
//  DMOPlanets
//
//  Created by morse on 1/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import "DMOSettingsViewController.h"

@interface DMOSettingsViewController ()

@end

@implementation DMOSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)showPlutoSwitched:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_showPluto forKey:@"ShouldShowPluto"];
    NSLog(@"%d", [userDefaults boolForKey:@"ShouldShowPluto"]);
}

- (IBAction)doneTapped:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}


    @end
