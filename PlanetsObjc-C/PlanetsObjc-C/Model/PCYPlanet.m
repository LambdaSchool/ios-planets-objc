//
//  PCYPlanet.m
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYPlanet.h"

@implementation PCYPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName {
    
self = [super init];
if (self != nil) {
    
    _name = name;
    _imageName = imageName;
}

    return self;
}

@end
