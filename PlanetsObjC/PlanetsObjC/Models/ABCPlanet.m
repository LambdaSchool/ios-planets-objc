//
//  ABCPlanet.m
//  PlanetsObjC
//
//  Created by Austin Cole on 2/25/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import "ABCPlanet.h"

@implementation ABCPlanet

- (id)init {
    self = [super init];
    if (self != nil) {
        [self setName:_name];
        [self setImage:_image];
    }
    return self;
}

@end
