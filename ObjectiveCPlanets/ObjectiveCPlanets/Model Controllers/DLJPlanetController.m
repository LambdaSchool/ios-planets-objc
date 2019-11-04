//
//  DLJPlanetController.m
//  ObjectiveCPlanets
//
//  Created by Diante Lewis-Jolley on 7/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "DLJPlanetController.h"
#import "DLJPlanet.h"

@implementation DLJPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {

        _planets = @[[[DLJPlanet alloc] initWithPlanetName:@"Earth"],
                     [[DLJPlanet alloc] initWithPlanetName:@"Jupiter"],
                     [[DLJPlanet alloc] initWithPlanetName:@"Mars"],
                     [[DLJPlanet alloc] initWithPlanetName:@"Mercery"],
                     [[DLJPlanet alloc] initWithPlanetName:@"Saturn"],
                     [[DLJPlanet alloc] initWithPlanetName:@"Uranus"],
                     [[DLJPlanet alloc] initWithPlanetName:@"Venus"],
                     [[DLJPlanet alloc] initWithPlanetName:@"Neptune"]];

        _plutoPlanets = @[[[DLJPlanet alloc] initWithPlanetName:@"Earth"],
                          [[DLJPlanet alloc] initWithPlanetName:@"Jupiter"],
                          [[DLJPlanet alloc] initWithPlanetName:@"Mars"],
                          [[DLJPlanet alloc] initWithPlanetName:@"Mercery"],
                          [[DLJPlanet alloc] initWithPlanetName:@"Saturn"],
                          [[DLJPlanet alloc] initWithPlanetName:@"Uranus"],
                          [[DLJPlanet alloc] initWithPlanetName:@"Venus"],
                          [[DLJPlanet alloc] initWithPlanetName:@"Neptune"],
                          [[DLJPlanet alloc] initWithPlanetName:@"Pluto"]];




    }
    return self;
}



@end
