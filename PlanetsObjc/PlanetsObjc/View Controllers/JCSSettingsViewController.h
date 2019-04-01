//
//  JCSSettingsViewController.h
//  PlanetsObjc
//
//  Created by Lambda_School_Loaner_95 on 4/1/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JCSSettingsViewController : UIViewController

- (IBAction)doneTapped:(id)sender;

@property (weak, nonatomic) IBOutlet UISwitch *planetSwitch;

- (IBAction)planetSwitchTapped:(id)sender;

@end

NS_ASSUME_NONNULL_END
