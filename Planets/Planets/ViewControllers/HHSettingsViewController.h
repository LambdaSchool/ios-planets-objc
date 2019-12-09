//
//  HHSettingsViewController.h
//  Planets
//
//  Created by Hayden Hastings on 7/15/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *shouldShowPlutoSwitch;

- (IBAction)switchButtonTapped:(UISwitch *)sender;
- (IBAction)doneButtonTapped:(UIButton *)sender;
@end

NS_ASSUME_NONNULL_END
