//
//  PCYPlanet.m
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYPlanet.h"

@implementation PCYPlanet

- (instancetype)initWithPlanet:(NSString *)planet planetImage:(NSString *)planetImage {
    
self = [super init];
if (self != nil) {
    
    _planet = planet;
    _planetImage = planetImage;
}

    return self;
}

@end
