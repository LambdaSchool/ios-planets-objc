//
//  TXCPlanetsCollectionViewController.h
//  PlanetsObjC
//
//  Created by Thomas Cacciatore on 7/15/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TXCPlanetController;

NS_ASSUME_NONNULL_BEGIN

@interface TXCPlanetsCollectionViewController : UICollectionViewController

@property TXCPlanetController *planetController;

@end

NS_ASSUME_NONNULL_END
