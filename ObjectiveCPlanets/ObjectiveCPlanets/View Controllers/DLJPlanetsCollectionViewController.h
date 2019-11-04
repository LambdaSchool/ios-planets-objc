//
//  DLJPlanetsCollectionViewController.h
//  ObjectiveCPlanets
//
//  Created by Diante Lewis-Jolley on 7/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DLJPlanetController;
@class DLJSettingsViewController;

NS_ASSUME_NONNULL_BEGIN

@interface DLJPlanetsCollectionViewController : UICollectionViewController

@property DLJPlanetController *planetController;

@property DLJSettingsViewController *settingsViewController;




@end

NS_ASSUME_NONNULL_END
