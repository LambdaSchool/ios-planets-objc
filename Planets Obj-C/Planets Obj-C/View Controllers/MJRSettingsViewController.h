//
//  MJRSettingsViewController.h
//  Planets Obj-C
//
//  Created by Moses Robinson on 3/25/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJRSettingsViewController : UIViewController

- (IBAction)plutoSwitched:(id)sender;
- (IBAction)doneTapped:(id)sender;

@property (strong, nonatomic) IBOutlet UISwitch *plutoSwitch;

@end

NS_ASSUME_NONNULL_END
