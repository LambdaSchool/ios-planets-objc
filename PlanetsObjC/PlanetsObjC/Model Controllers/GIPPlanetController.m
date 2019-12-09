//
//  GIPPlanetController.m
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPPlanetController.h"
#import "GIPPlanet.h"

@implementation GIPPlanetController

- (instancetype)init {
    self = [super init];
    if (self) {
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[GIPPlanet alloc] initWithName:@"Earth" image:[UIImage imageNamed:@"earth.png"]],
                             [[GIPPlanet alloc] initWithName:@"Jupiter" image:[UIImage imageNamed:@"jupiter.png"]],
                             [[GIPPlanet alloc] initWithName:@"Mars" image:[UIImage imageNamed:@"mars.png"]],
                             [[GIPPlanet alloc] initWithName:@"Mercury" image:[UIImage imageNamed:@"mercury.png"]],
                             [[GIPPlanet alloc] initWithName:@"Neptune" image:[UIImage imageNamed:@"neptune.png"]],
                             [[GIPPlanet alloc] initWithName:@"Saturn" image:[UIImage imageNamed:@"saturn.png"]],
                             [[GIPPlanet alloc] initWithName:@"Uranus" image:[UIImage imageNamed:@"uranus.png"]],
                             [[GIPPlanet alloc] initWithName:@"Venus" image:[UIImage imageNamed:@"venus.png"]],
                             [[GIPPlanet alloc] initWithName:@"Pluto" image:[UIImage imageNamed:@"pluto.png"]],
                             nil];
        
        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                [[GIPPlanet alloc] initWithName:@"Earth" image:[UIImage imageNamed:@"earth.png"]],
                                [[GIPPlanet alloc] initWithName:@"Jupiter" image:[UIImage imageNamed:@"jupiter.png"]],
                                [[GIPPlanet alloc] initWithName:@"Mars" image:[UIImage imageNamed:@"mars.png"]],
                                [[GIPPlanet alloc] initWithName:@"Mercury" image:[UIImage imageNamed:@"mercury.png"]],
                                [[GIPPlanet alloc] initWithName:@"Neptune" image:[UIImage imageNamed:@"neptune.png"]],
                                [[GIPPlanet alloc] initWithName:@"Saturn" image:[UIImage imageNamed:@"saturn.png"]],
                                [[GIPPlanet alloc] initWithName:@"Uranus" image:[UIImage imageNamed:@"uranus.png"]],
                                [[GIPPlanet alloc] initWithName:@"Venus" image:[UIImage imageNamed:@"venus.png"]],
                                nil];
        
    }
    return self;
}

@end
