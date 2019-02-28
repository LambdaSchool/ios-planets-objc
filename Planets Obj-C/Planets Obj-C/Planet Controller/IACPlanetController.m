//
//  IACPlanetController.m
//  Planets Obj-C
//
//  Created by Ivan Caldwell on 2/26/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import "IACPlanetController.h"
#import "IACPlanet.h"

@implementation IACPlanetController

- (instancetype)init {
    self = [super init];
    if (self) {
        IACPlanet *mercury = [[IACPlanet alloc] initWithName:@"Mercury"];
        IACPlanet *venus   = [[IACPlanet alloc] initWithName:@"Venus"];
        IACPlanet *earth   = [[IACPlanet alloc] initWithName:@"Earth"];
        IACPlanet *mars    = [[IACPlanet alloc] initWithName:@"Mars"];
        IACPlanet *jupiter = [[IACPlanet alloc] initWithName:@"Jupiter"];
        IACPlanet *saturn  = [[IACPlanet alloc] initWithName:@"Saturn"];
        IACPlanet *uranus  = [[IACPlanet alloc] initWithName:@"Uranus"];
        IACPlanet *neptune = [[IACPlanet alloc] initWithName:@"Neptune"];
        IACPlanet *pluto   = [[IACPlanet alloc] initWithName:@"Pluto"];
        

        // Two different ways to create an array
        //_planetsWithPluto = [NSArray arrayWithObjects: mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
        _planetsWithPluto = @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto];
        // literal syntax
        _planetsWithoutPluto = @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune];
    }
    return self;
}
@end
