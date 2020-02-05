//
//  PLAPlanetController.h
//  PlanetsObjC
//
//  Created by Bobby Keffury on 1/30/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLAPlanet.h"

NS_ASSUME_NONNULL_BEGIN

@interface PLAPlanetController : NSObject

@property (nonatomic, readonly, copy) NSArray<PLAPlanet *> *planets;

@end

NS_ASSUME_NONNULL_END
