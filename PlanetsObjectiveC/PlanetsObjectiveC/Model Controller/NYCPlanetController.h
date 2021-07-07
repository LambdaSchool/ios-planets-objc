//
//  NYCPlanetController.h
//  PlanetsObjectiveC
//
//  Created by Nathanael Youngren on 4/1/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCPlanetController : NSObject

- (instancetype)initWithPluto;
- (instancetype)initWithoutPluto;

@property NSArray *planets;

@end

NS_ASSUME_NONNULL_END
