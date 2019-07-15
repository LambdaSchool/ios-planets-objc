//
//  CCCPlanetsCollectionViewController.h
//  ObjCPlanets
//
//  Created by Ryan Murphy on 7/15/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import <UIKit/UIKit.h>


@class CCCPlanetController;

@class CCCSettingsViewController;

NS_ASSUME_NONNULL_BEGIN

@interface CCCPlanetsCollectionViewController : UICollectionViewController

// Reference to planetController
@property CCCPlanetController *planetController;

@property CCCSettingsViewController *settingsViewController;

@end

NS_ASSUME_NONNULL_END
