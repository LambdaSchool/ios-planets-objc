//
//  MJRPlanetsCollectionViewController.h
//  Planets Obj-C
//
//  Created by Moses Robinson on 3/25/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MJRPlanetController;

NS_ASSUME_NONNULL_BEGIN

@interface MJRPlanetsCollectionViewController : UICollectionViewController

@property MJRPlanetController *planetController;
@property (readonly) NSArray *planets;

@end

NS_ASSUME_NONNULL_END
