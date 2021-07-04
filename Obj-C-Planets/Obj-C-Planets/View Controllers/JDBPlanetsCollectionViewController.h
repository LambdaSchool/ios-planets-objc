//
//  JDBPlanetsCollectionViewController.h
//  Obj-C-Planets
//
//  Created by Madison Waters on 3/4/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JDBSettingsViewController;
@class JDBPlanetController;

NS_ASSUME_NONNULL_BEGIN

@interface JDBPlanetsCollectionViewController : UICollectionViewController

@property JDBSettingsViewController *settingsViewController;
@property JDBPlanetController *planetController;

@end

NS_ASSUME_NONNULL_END
