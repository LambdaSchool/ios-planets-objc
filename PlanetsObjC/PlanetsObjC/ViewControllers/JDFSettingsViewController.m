//
//  JDFSettingsViewController.m
//  PlanetsObjC
//
//  Created by Jonathan Ferrer on 7/15/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

#import "JDFSettingsViewController.h"

@interface JDFSettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)isPlutoChanged:(id)sender;

@end

@implementation JDFSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.plutoSwitch.on = [defaults boolForKey:@"PlutoStatus"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)isPlutoChanged:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.plutoSwitch.isOn forKey:@"PlutoStatus"];
}
@end
