//
//  JDBPlanetController.m
//  Obj-C-Planets
//
//  Created by Madison Waters on 3/4/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "JDBPlanetController.h"
#import "JDBPlanet.h"

@implementation JDBPlanetController

- (instancetype)init {
    self = [super init];
    
    if (self) {
        JDBPlanet *mercury = [[JDBPlanet alloc] initWithName:@"Mercury"];
        JDBPlanet *venus = [[JDBPlanet alloc] initWithName:@"Venus"];
        JDBPlanet *earth = [[JDBPlanet alloc] initWithName:@"Earth"];
        JDBPlanet *mars = [[JDBPlanet alloc] initWithName:@"Mars"];
        JDBPlanet *jupiter = [[JDBPlanet alloc] initWithName:@"Jupiter"];
        JDBPlanet *saturn = [[JDBPlanet alloc] initWithName:@"Saturn"];
        JDBPlanet *uranus = [[JDBPlanet alloc] initWithName:@"Uranus"];
        JDBPlanet *neptune = [[JDBPlanet alloc] initWithName:@"Neptune"];
        JDBPlanet *pluto = [[JDBPlanet alloc] initWithName:@"Pluto"];
        
        _planetsWithPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
                           
        _planetsWithoutPluto = @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune];
    }
    return self;
}

@end
