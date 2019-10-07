//
//  BYSettingViewController.h
//  Planets Obj-C
//
//  Created by Bradley Yin on 10/7/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BYSettingViewController : UIViewController

@property IBOutlet UIButton *doneButton;
@property IBOutlet UISwitch *plutoSwitch;

- (IBAction)done:(id)sender;
- (IBAction)togglePlutoSwitch:(id)sender;

@end

NS_ASSUME_NONNULL_END
