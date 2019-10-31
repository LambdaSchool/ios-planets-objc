//
//  JDFPlanetController.m
//  PlanetsObjC
//
//  Created by Jonathan Ferrer on 7/15/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

#import "JDFPlanetController.h"
#import "JDFPlanet.h"

@implementation JDFPlanetController: NSObject

- (instancetype)init {
    self = [super init];
    if (self) {

        JDFPlanet *mercury = [[JDFPlanet alloc] initWithName:@"Mercury"];
        JDFPlanet *venus = [[JDFPlanet alloc] initWithName:@"Venus"];
        JDFPlanet *earth = [[JDFPlanet alloc] initWithName:@"Earth"];
        JDFPlanet *mars = [[JDFPlanet alloc] initWithName:@"Mars"];
        JDFPlanet *jupiter = [[JDFPlanet alloc] initWithName:@"Jupiter"];
        JDFPlanet *saturn = [[JDFPlanet alloc] initWithName:@"Saturn"];
        JDFPlanet *uranus = [[JDFPlanet alloc] initWithName:@"Uranus"];
        JDFPlanet *neptune = [[JDFPlanet alloc] initWithName:@"Neptune"];
        JDFPlanet *pluto = [[JDFPlanet alloc] initWithName:@"Pluto"];

        _planetsWithPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];


        _planetsWithoutPluto = @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune];
    }
    return self;
}

@end
