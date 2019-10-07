//
//  BYSettingViewController.m
//  Planets Obj-C
//
//  Created by Bradley Yin on 10/7/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYSettingViewController.h"

@interface BYSettingViewController ()

@end

@implementation BYSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)togglePlutoSwitch:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:[sender isOn] forKey:@"shouldShowPluto"];
}

- (void)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
