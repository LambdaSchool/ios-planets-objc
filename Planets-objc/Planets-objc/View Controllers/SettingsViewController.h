//
//  SettingsViewController.h
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)showPlutoSwitched:(id)sender;


@end
