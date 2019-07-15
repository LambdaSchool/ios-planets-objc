//
//  MGBPlanetController.m
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBPlanetController.h"
#import "MGBPlanet.h"

@implementation MGBPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _planets =
                    @[
                      [[MGBPlanet alloc] initWithName:@"Mercury" image:@"Mercury"],
                      [[MGBPlanet alloc] initWithName:@"Venus" image:@"Venus"],
                      [[MGBPlanet alloc] initWithName:@"Earth" image:@"Earth"],
                      [[MGBPlanet alloc] initWithName:@"Mars" image:@"Mars"],
                      [[MGBPlanet alloc] initWithName:@"Jupiter" image:@"Jupiter"],
                      [[MGBPlanet alloc] initWithName:@"Saturn" image:@"Saturn"],
                      [[MGBPlanet alloc] initWithName:@"Uranus" image:@"Uranus"],
                      [[MGBPlanet alloc] initWithName:@"Neptune" image:@"Neptune"],
                      [[MGBPlanet alloc] initWithName:@"Pluto" image:@"Pluto"]
                      ];
        
        _planetsWithoutPluto =
                    @[
                      [[MGBPlanet alloc] initWithName:@"Mercury" image:@"Mercury"],
                      [[MGBPlanet alloc] initWithName:@"Venus" image:@"Venus"],
                      [[MGBPlanet alloc] initWithName:@"Earth" image:@"Earth"],
                      [[MGBPlanet alloc] initWithName:@"Mars" image:@"Mars"],
                      [[MGBPlanet alloc] initWithName:@"Jupiter" image:@"Jupiter"],
                      [[MGBPlanet alloc] initWithName:@"Saturn" image:@"Saturn"],
                      [[MGBPlanet alloc] initWithName:@"Uranus" image:@"Uranus"],
                      [[MGBPlanet alloc] initWithName:@"Neptune" image:@"Neptune"]
                      ];
    }
    return self;
}

@end

