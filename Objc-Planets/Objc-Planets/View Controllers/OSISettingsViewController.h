//
//  OSISettingsViewController.h
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OSISettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *shouldAddPluto;

- (IBAction)doneButton:(UIButton *)sender;

- (IBAction)shouldAddPlutoAction:(UISwitch *)sender;

@end

NS_ASSUME_NONNULL_END
