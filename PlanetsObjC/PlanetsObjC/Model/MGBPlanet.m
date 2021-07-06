//
//  MGBPlanet.m
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBPlanet.h"

@implementation MGBPlanet

- (instancetype)initWithName:(NSString *)name
                       image:(NSString *)image {
    self = [super init];
    if (self != nil) {
        _name = name;
        _image = image;
    }
    return self;
}

@end
