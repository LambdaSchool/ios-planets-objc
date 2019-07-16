//
//  MRFViewController.h
//  OBJCPlanetsHW
//
//  Created by Michael Flowers on 7/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MRFViewController : UIViewController

- (IBAction)doneButtonPressed:(UIButton *)sender;
- (IBAction)switchValueChanged:(UISwitch *)sender;

@property (weak, nonatomic) IBOutlet UISwitch *switchValue;


@end

NS_ASSUME_NONNULL_END
