//
//  KRCSettingsViewController.h
//  Planets
//
//  Created by Christopher Aronson on 7/15/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class KRCPlanetsController;

@interface KRCSettingsViewController : UIViewController

@property KRCPlanetsController *planetsController;

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)switchValueChanged:(UISwitch *)sender;

- (IBAction)doneButtonTapped:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
