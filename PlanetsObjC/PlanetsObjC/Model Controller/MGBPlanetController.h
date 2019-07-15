//
//  MGBPlanetController.h
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MGBPlanetController : NSObject

@property (nonatomic) NSArray *planets;
@property NSArray *planetsWithoutPluto;
@property NSArray *planetsWithPluto;

@end

NS_ASSUME_NONNULL_END
