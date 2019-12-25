//
//  ABCPlanetController.h
//  PlanetsObjC
//
//  Created by Austin Cole on 2/25/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ABCPlanetController : NSObject

@property(nonatomic) NSArray* arrayOfPlanetsWithPluto;
@property(nonatomic) NSArray* arrayOfPlanetsWithoutPluto;
@property(nonatomic) NSArray* arrayOfPlanets;
@property BOOL plutoIsAPlanet;

- (NSArray *)arrayOfPlanetsWithPluto;
- (NSArray *)arrayOfPlanetsWithoutPluto;

@end

NS_ASSUME_NONNULL_END
