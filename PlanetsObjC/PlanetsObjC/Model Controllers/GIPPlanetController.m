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
        
        GIPPlanet *earth = [[GIPPlanet alloc] initWithName:@"Earth" image:[UIImage imageNamed:@"earth.png"] size:0.09113];
        GIPPlanet *jupiter = [[GIPPlanet alloc] initWithName:@"Jupiter" image:[UIImage imageNamed:@"jupiter.png"] size:1.0];
        GIPPlanet *mars = [[GIPPlanet alloc] initWithName:@"Mars" image:[UIImage imageNamed:@"mars.png"] size:0.048849];
        GIPPlanet *mercury = [[GIPPlanet alloc] initWithName:@"Mercury" image:[UIImage imageNamed:@"mercury.png"] size:0.03490];
        GIPPlanet *neptune = [[GIPPlanet alloc] initWithName:@"Neptune" image:[UIImage imageNamed:@"neptune.png"] size:0.35219];
        GIPPlanet *saturn = [[GIPPlanet alloc] initWithName:@"Saturn" image:[UIImage imageNamed:@"saturn.png"] size:0.83294];
        GIPPlanet *uranus = [[GIPPlanet alloc] initWithName:@"Uranus" image:[UIImage imageNamed:@"uranus.png"] size:0.36278];
        GIPPlanet *venus = [[GIPPlanet alloc] initWithName:@"Venus" image:[UIImage imageNamed:@"venus.png"] size:0.08657];
        GIPPlanet *pluto = [[GIPPlanet alloc] initWithName:@"Pluto" image:[UIImage imageNamed:@"pluto.png"] size:0.01700];

        _planetsWithPluto = [[NSArray alloc] initWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
        
        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, nil];
        
    }
    return self;
}

@end
