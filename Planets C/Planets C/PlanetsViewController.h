//
//  PlanetsViewController.h
//  Planets C
//
//  Created by Lotanna Igwe-Odunze on 3/6/19.
//  Copyright © 2019 Sugabelly LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlanetsViewController : UICollectionViewController

//Declared an array to hold the planets
@property (nonatomic, readonly) NSArray *planets;
@property (nonatomic, readonly) NSArray *planetNames;


@end

NS_ASSUME_NONNULL_END
