//
//  NYCPlanet.m
//  PlanetsObjectiveC
//
//  Created by Nathanael Youngren on 4/1/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCPlanet.h"

@implementation NYCPlanet

- (instancetype)initWithPlanetName:(NSString *) name andWithImage:(NSString *) image {
    
    self = [super init];
    if (self) {
        _planetName = name;
        _planetImage = [[UIImage alloc] initWithContentsOfFile: image];
    }
    return self;
}

@end
