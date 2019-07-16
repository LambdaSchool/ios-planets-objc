//
//  MRFPlanetController.h
//  OBJCPlanetsHW
//
//  Created by Michael Flowers on 7/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MRFPlanetController : NSObject

//indicate properties you want to use
@property NSArray *planetsWOP;
@property NSArray *planetsWP;

@property (readonly) NSArray *planets;

@end

NS_ASSUME_NONNULL_END
