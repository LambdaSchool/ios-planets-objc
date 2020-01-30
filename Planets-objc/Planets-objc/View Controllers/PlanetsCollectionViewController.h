//
//  PlanetsCollectionViewController.h
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PlanetController;
@class SettingsViewController;

NS_ASSUME_NONNULL_BEGIN

@interface PlanetsCollectionViewController : UICollectionViewController

@property PlanetController *planetController;
@property SettingsViewController *settingsViewController;

@end

NS_ASSUME_NONNULL_END
