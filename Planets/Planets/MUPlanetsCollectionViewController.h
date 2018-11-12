//
//  MUPlanetsCollectionViewController.h
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PlanetController;
@class Planet;
NS_ASSUME_NONNULL_BEGIN

@interface MUPlanetsCollectionViewController : UICollectionViewController

@property PlanetController *planetController;
@property NSArray *planets;

@end

NS_ASSUME_NONNULL_END
