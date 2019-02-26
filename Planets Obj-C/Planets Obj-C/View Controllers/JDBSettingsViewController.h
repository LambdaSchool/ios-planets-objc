//
//  SettingsViewController.h
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDBSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *showPlutoSwitch;

- (IBAction)doneButton:(id)sender;
- (IBAction)plutoSwitch:(id)sender;


@end

NS_ASSUME_NONNULL_END
