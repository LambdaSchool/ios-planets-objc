//
//  MGBSettingsViewController.h
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MGBSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *changeShouldShowPlutoSwitch;

- (IBAction)changeShouldShowPluto:(id)sender;
- (IBAction)doneButtonPressed:(id)sender;

@end

NS_ASSUME_NONNULL_END
