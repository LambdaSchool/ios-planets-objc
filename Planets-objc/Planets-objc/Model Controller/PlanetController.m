//
//  PlanetController.m
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlanetController.h"
#import "Planet.h"

@implementation PlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        Planet *mercury = [[Planet alloc] initWithName:@"Mercury"];
        Planet *venus = [[Planet alloc] initWithName:@"Venus"];
        Planet *earth = [[Planet alloc] initWithName:@"Earth"];
        Planet *mars = [[Planet alloc] initWithName:@"Mars"];
        Planet *jupiter = [[Planet alloc] initWithName:@"Jupiter"];
        Planet *saturn = [[Planet alloc] initWithName:@"Saturn"];
        Planet *uranus = [[Planet alloc] initWithName:@"Uranus"];
        Planet *neptune = [[Planet alloc] initWithName:@"Neptune"];
        Planet *pluto = [[Planet alloc] initWithName:@"Pluto"];
        
        _planetsIncludingPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
        _planetsWithoutPluto = @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune];
    }
    return self;
}

@end
