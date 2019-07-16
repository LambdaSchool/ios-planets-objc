//
//  LSISettingsViewController.h
//  Planets
//
//  Created by Hector Steven on 7/15/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSISettingsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISwitch *plutoSwitch;
@property BOOL plutoIsPlanet;


@end

NS_ASSUME_NONNULL_END
