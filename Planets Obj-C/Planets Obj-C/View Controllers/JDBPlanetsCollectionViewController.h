//
//  JDBPlanetsCollectionViewController.h
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <UIKit/UIKit.h>

// Only works in a header file - Do not need to import the class IF using it as a type: a property/a method return type/or an argument
@class JDBPlanetController;
@class JDBSettingsViewController;

NS_ASSUME_NONNULL_BEGIN

@interface JDBPlanetsCollectionViewController : UICollectionViewController

@property JDBPlanetController *planetController;
@property JDBSettingsViewController *settingsViewController;

@end

NS_ASSUME_NONNULL_END
