//
//  KTMCollectionViewController.h
//  OBJCPlanets
//
//  Created by Kobe McKee on 7/15/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KTMPlanetController;

NS_ASSUME_NONNULL_BEGIN

@interface KTMPlanetsCollectionViewController : UICollectionViewController

@property KTMPlanetController *planetController;
@property (readonly) NSArray *planets;

@end

NS_ASSUME_NONNULL_END
