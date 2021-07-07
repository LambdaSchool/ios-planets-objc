//
//  MUSettingsViewController.h
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MUSettingsViewController : UIViewController
- (IBAction)dismissSettings:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;
- (IBAction)shouldSwitchPluto:(id)sender;


-(void) updateViews;

@end

NS_ASSUME_NONNULL_END
