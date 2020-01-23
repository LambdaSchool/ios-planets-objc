//
//  CCCPlanetController.m
//  ObjCPlanets
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
//

#import "CCCPlanetController.h"
#import "CCCPlanet.h"

@implementation CCCPlanetController : NSObject

- (instancetype)init {
    self = [super init];
    if (self) {
        
        CCCPlanet *mercury = [[CCCPlanet alloc] initWithName:@"Mercury"];
        CCCPlanet *venus = [[CCCPlanet alloc] initWithName:@"Venus"];
        CCCPlanet *earth = [[CCCPlanet alloc] initWithName:@"Earth"];
        CCCPlanet *mars = [[CCCPlanet alloc] initWithName:@"Mars"];
        CCCPlanet *jupiter = [[CCCPlanet alloc] initWithName:@"Jupiter"];
        CCCPlanet *saturn = [[CCCPlanet alloc] initWithName:@"Saturn"];
        CCCPlanet *uranus = [[CCCPlanet alloc] initWithName:@"Uranus"];
        CCCPlanet *neptune = [[CCCPlanet alloc] initWithName:@"Neptune"];
        CCCPlanet *pluto = [[CCCPlanet alloc] initWithName:@"Pluto"];
        
        _planetsWithPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
        
        
        _planetsWithoutPluto = @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune];
        
        
    }
    return self;
}

@end
