//
//  DLJPlanet.m
//  ObjectiveCPlanets
//
//  Created by Diante Lewis-Jolley on 7/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "DLJPlanet.h"

@implementation DLJPlanet

- (instancetype)initWithPlanetName:(NSString *)planetName imageName:(NSString *)imageName {

    self = [super init];
    if (self != nil) {

        _planetName = planetName;
        _imageName = imageName;
    }
    return self;
}

@end
