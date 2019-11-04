//
//  DLJSettingsViewController.h
//  ObjectiveCPlanets
//
//  Created by Diante Lewis-Jolley on 7/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DLJSettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)doneButtonTapped:(id)sender;
- (IBAction)shouldShowPlutoChanged:(id)sender;


@end

NS_ASSUME_NONNULL_END
