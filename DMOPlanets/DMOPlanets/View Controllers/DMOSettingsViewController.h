//
//  DMOSettingsViewController.h
//  DMOPlanets
//
//  Created by morse on 1/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DMOSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *showPluto;

- (IBAction)showPlutoSwitched:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *doneTapped;


@end

