//
//  CCCPlanetsCollectionViewController.h
//  ObjCPlanets
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
//

#import <UIKit/UIKit.h>


@class CCCPlanetController;

@class CCCSettingsViewController;

NS_ASSUME_NONNULL_BEGIN

@interface CCCPlanetsCollectionViewController : UICollectionViewController


@property CCCPlanetController *planetController;

@property CCCSettingsViewController *settingsViewController;

@end

NS_ASSUME_NONNULL_END
