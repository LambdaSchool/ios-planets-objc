//
//  SettingsViewController.h
//  ios-planets-objc
//
//  Created by Conner on 10/1/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SettingsViewController : UIViewController

- (IBAction)changeShouldShowPluto:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *shouldShowPlutoSwitch;

@end

NS_ASSUME_NONNULL_END
