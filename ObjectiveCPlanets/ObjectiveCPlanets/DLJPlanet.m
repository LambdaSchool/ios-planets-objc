//
//  DLJPlanet.m
//  ObjectiveCPlanets
//
//  Created by Diante Lewis-Jolley on 7/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "DLJPlanet.h"


@implementation DLJPlanet

- (UIImage *)image {
    return [UIImage imageNamed:self.imageName];
}

- (instancetype)initWithPlanetName:(NSString *)planetName {

    self = [super init];
    if (self != nil) {

        _planetName = planetName;
        _imageName = [planetName lowercaseString];
    }
    return self;
}

@end
