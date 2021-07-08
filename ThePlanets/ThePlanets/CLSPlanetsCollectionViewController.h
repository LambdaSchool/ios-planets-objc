//
//  CLSPlanetsCollectionViewController.h
//  ThePlanets
//
//  Created by Carolyn Lea on 10/1/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class CLSPlanetController;
@interface CLSPlanetsCollectionViewController : UICollectionViewController

@property CLSPlanetController *planetController;
@property BOOL shouldPlutoBeAdded;
@end

NS_ASSUME_NONNULL_END
