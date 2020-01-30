//
//  PlanetController.h
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Planet.h"

@interface PlanetController : NSObject

@property (nonatomic, readonly) NSArray *planetsIncludingPluto;
@property (nonatomic, readonly) NSArray *planetsWithoutPluto;

@end
