//
//  CCCPlanetController.h
//  ObjCPlanets
//
//  Created by Ryan Murphy on 7/15/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCCPlanetController : NSObject

@property (nonatomic, readonly) NSArray *planetsWithPluto;

@property (nonatomic, readonly) NSArray *planetsWithoutPluto;

@end

NS_ASSUME_NONNULL_END
