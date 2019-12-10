//
//  GIPSettingsViewController.h
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GIPSettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *isPlutoPlanetSwitch;
@property NSUserDefaults *userDefaults;

- (IBAction)doneButtonPressed:(id)sender;
- (IBAction)isPlutoPlanetSwitchChanged:(id)sender;

@end

NS_ASSUME_NONNULL_END
