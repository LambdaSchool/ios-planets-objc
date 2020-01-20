//
//  PlanetsController.m
//  DMOPlanets
//
//  Created by morse on 1/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import "DMOPlanetsController.h"
#import "DMOPlanet.h"

@implementation DMOPlanetsController

- (instancetype)init {
    self = [super init];
    if (self) {
        _planets = [[NSArray alloc]initWithObjects:
                    [[DMOPlanet alloc] initWithName:@"Earth"],
                    [[DMOPlanet alloc] initWithName:@"Jupiter"],
                    [[DMOPlanet alloc] initWithName:@"Mars"],
                    [[DMOPlanet alloc] initWithName:@"mercury"],
                    [[DMOPlanet alloc] initWithName:@"Neptune"],
                    [[DMOPlanet alloc] initWithName:@"Pluto"],
                    [[DMOPlanet alloc] initWithName:@"Saturn"],
                    [[DMOPlanet alloc] initWithName:@"Uranus"],
                    [[DMOPlanet alloc] initWithName:@"Venus"],
                    nil];
    }
    return self;
}

@end
