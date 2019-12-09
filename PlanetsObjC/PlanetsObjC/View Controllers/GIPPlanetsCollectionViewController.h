//
//  GIPPlanetsCollectionViewController.h
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GIPPlanetController;

@interface GIPPlanetsCollectionViewController : UICollectionViewController

@property GIPPlanetController *controller;
@property NSUserDefaults *userDefaults;
@property (nonatomic) NSArray *planetsToShow;

@end

NS_ASSUME_NONNULL_END
