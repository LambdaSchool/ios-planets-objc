//
//  DYPSettingsViewController.h
//  PlanetsObjC
//
//  Created by Daniela Parra on 11/10/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYPSettingsViewController : UIViewController

- (IBAction)didUpdatePluto:(id)sender;

- (void)updateViews;

@property (weak, nonatomic) IBOutlet UISwitch *isPlutoAPlanetSwitch;

@end

NS_ASSUME_NONNULL_END
