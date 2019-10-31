//
//  JDFPlanetController.h
//  PlanetsObjC
//
//  Created by Jonathan Ferrer on 7/15/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDFPlanetController : NSObject

@property (nonatomic, readonly) NSArray *planetsWithPluto;

@property (nonatomic, readonly) NSArray *planetsWithoutPluto;

@end

NS_ASSUME_NONNULL_END
