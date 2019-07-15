//
//  KTMSettingsViewController.h
//  OBJCPlanets
//
//  Created by Kobe McKee on 7/15/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KTMSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (void)updateViews;
- (IBAction)donePressed:(UIButton *)sender;
- (IBAction)togglePluto:(id)sender;

@end

NS_ASSUME_NONNULL_END
