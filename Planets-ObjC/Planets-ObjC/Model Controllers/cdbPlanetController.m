//
//  cdbPlanetController.m
//  Planets-ObjC
//
//  Created by Ciara Beitel on 11/5/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "cdbPlanetController.h"
#import "cdbPlanet.h"

@implementation cdbPlanetController

- (instancetype)init {
    self = [super init];
    if (self) {
        
        _planets = @[
        [[cdbPlanet alloc] initWithName:@"Mercury" image:@"mercury"],
        [[cdbPlanet alloc] initWithName:@"Venus" image:@"venus"],
        [[cdbPlanet alloc] initWithName:@"Earth" image:@"earth"],
        [[cdbPlanet alloc] initWithName:@"Mars" image:@"mars"],
        [[cdbPlanet alloc] initWithName:@"Jupiter" image:@"jupiter"],
        [[cdbPlanet alloc] initWithName:@"Saturn" image:@"saturn"],
        [[cdbPlanet alloc] initWithName:@"Uranus" image:@"uranus"],
        [[cdbPlanet alloc] initWithName:@"Neptune" image:@"neptune"],
        [[cdbPlanet alloc] initWithName:@"Pluto" image:@"pluto"]];
    }
    return self;
}

@end
