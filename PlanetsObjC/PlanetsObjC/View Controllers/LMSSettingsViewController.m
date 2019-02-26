//
//  LMSSettingsViewController.m
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSSettingsViewController.h"

@interface LMSSettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *showPlutoSwitch;

@end

@implementation LMSSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    [self.showPlutoSwitch setOn:[[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"]];
    
}

- (IBAction)toggleShowPluto:(id)sender {
    BOOL shouldShowPluto = self.showPlutoSwitch.isOn;
    
    [[NSUserDefaults standardUserDefaults] setBool:shouldShowPluto forKey:@"ShouldShowPluto"];
}

- (IBAction)finishPlutoUpdate:(id)sender {
    [self performSegueWithIdentifier:@"unwindFromPlutoSettings" sender:self];
}

@end
