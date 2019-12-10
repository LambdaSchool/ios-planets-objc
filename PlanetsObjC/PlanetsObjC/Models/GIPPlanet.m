//
//  GIPPlanet.m
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPPlanet.h"

@implementation GIPPlanet

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image size:(double)size {
    self = [super init];
    if (self) {
        _name = name;
        _image = image;
        _size = size;
    }
    return self;
}

@end
