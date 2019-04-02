//
//  PCYSettingsViewController.m
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYSettingsViewController.h"

@interface PCYSettingsViewController ()

    @property (weak, nonatomic) IBOutlet UISwitch *showPluto;

@end

@implementation PCYSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    [self.showPluto setOn:[[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"]];
    
}

- (IBAction)toggleShowPluto:(id)sender {
    BOOL shouldShowPluto = self.showPluto.isOn;
}


- (IBAction)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
