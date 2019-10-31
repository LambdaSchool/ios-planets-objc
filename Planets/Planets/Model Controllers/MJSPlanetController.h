//
//  MJSPlanetController.h
//  Planets
//
//  Created by Michael Stoffer on 10/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MJSPlanet;

NS_ASSUME_NONNULL_BEGIN

@interface MJSPlanetController : NSObject

@property (readonly) NSArray<MJSPlanet *> *planets;

@end

NS_ASSUME_NONNULL_END
