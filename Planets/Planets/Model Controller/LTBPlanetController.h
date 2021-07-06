//
//  LTBPlanetController.h
//  Planets
//
//  Created by Linh Bouniol on 10/1/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTBPlanetController : NSObject

@property (readonly) NSArray *planets;
@property (readonly) NSArray *planetsWithPluto;
@property (readonly) NSArray *planetsWithoutPluto;

@end

NS_ASSUME_NONNULL_END
