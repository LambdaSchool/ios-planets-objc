//
//  PCYPlanetController.h
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PCYPlanetController : NSObject

@property (nonatomic) NSArray *planets;
@property (readonly) NSArray *planetsIncludingPluto;
@property (readonly) NSArray *planetsExcludingPluto;

@end

NS_ASSUME_NONNULL_END
