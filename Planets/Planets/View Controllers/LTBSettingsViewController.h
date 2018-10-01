//
//  LTBSettingsViewController.h
//  Planets
//
//  Created by Linh Bouniol on 10/1/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTBSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *shouldShowPlutoSwitch;

- (IBAction)changeShouldShowPluto:(id)sender;
- (IBAction)done:(id)sender;

@end

NS_ASSUME_NONNULL_END
