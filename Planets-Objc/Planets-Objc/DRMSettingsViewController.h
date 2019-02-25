//
//  DRMSettingsViewController.h
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DRMPlanetController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DRMSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *isPlutoPlanetSwitch;

@property DRMPlanetController *planetController;

- (IBAction)dismissSettings:(id)sender;

- (IBAction)togglePlutoIsPlanet:(UISwitch *)sender;

@end

NS_ASSUME_NONNULL_END
