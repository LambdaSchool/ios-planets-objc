//
//  NYCPlanetsCollectionViewController.h
//  PlanetsObjectiveC
//
//  Created by Nathanael Youngren on 4/1/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NYCPlanetController;

NS_ASSUME_NONNULL_BEGIN

@interface NYCPlanetsCollectionViewController : UICollectionViewController<UICollectionViewDelegateFlowLayout>

@property NYCPlanetController *planetController;

@end

NS_ASSUME_NONNULL_END
