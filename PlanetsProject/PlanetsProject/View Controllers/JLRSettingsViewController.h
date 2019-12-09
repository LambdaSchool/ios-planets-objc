//
//  JLRSettingsViewController.h
//  PlanetsProject
//
//  Created by Jesse Ruiz on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLRSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *shouldShowPluto;

- (IBAction)switchTapped:(UISwitch *)sender;
- (IBAction)doneTapped:(UIButton *)sender;

@end
