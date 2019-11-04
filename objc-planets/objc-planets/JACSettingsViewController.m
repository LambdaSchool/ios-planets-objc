//
//  JACSettingsViewController.m
//  objc-planets
//
//  Created by Jordan Christensen on 11/5/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACSettingsViewController.h"

@interface JACSettingsViewController ()

@end

@implementation JACSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _isPlutoPlanetSwitch.selected = YES;
}

- (IBAction)saveTapped:(id)sender {
    NSNumber *isPlutoPlanet;
    if ([_isPlutoPlanetSwitch isOn]) {
        isPlutoPlanet = [NSNumber numberWithInt:1];
    } else {
        isPlutoPlanet = [NSNumber numberWithInt:0];
    }
    
    NSMutableDictionary *appDefaults = [NSMutableDictionary dictionary];
    [appDefaults setObject:isPlutoPlanet forKey:@"isPlutoPlanet"];
    [[NSUserDefaults standardUserDefaults] registerDefaults:appDefaults];
    [self.navigationController popViewControllerAnimated:true];
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
