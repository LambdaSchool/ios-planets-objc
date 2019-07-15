//
//  HHPlanetsController.h
//  Planets
//
//  Created by Hayden Hastings on 7/15/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHPlanetsController : NSObject

@property (readonly) NSArray *planets;
@property NSArray *planetsWithoutPluto;
@property NSArray *planetsWithPluto;

@end

NS_ASSUME_NONNULL_END
