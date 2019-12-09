//
//  LSISettingsViewController.h
//  Planets Obj-C
//
//  Created by Isaac Lyons on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSISettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)done:(UIButton *)sender;

@end
