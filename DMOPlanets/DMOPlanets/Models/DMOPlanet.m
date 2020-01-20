//
//  DMOPlanet.m
//  DMOPlanets
//
//  Created by morse on 1/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import "DMOPlanet.h"

@implementation DMOPlanet

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    
    if (self) {
        _name = name;
        _image = name.lowercaseString;
    }
    return self;
}

@end
