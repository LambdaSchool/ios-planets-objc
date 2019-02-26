//
//  OSIPlanetController.m
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "OSIPlanetController.h"
#import "OSIPlanet.h"

@implementation OSIPlanetController

- (instancetype)init
{
    
    
    self = [super init];
    if (self) {
       
        OSIPlanet *mercury = [[OSIPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"];
        OSIPlanet *venus = [[OSIPlanet alloc] initWithName:@"Venus" imageName:@"venus"];
        OSIPlanet *earth = [[OSIPlanet alloc] initWithName:@"Earth" imageName:@"earth"];
        OSIPlanet *mars = [[OSIPlanet alloc] initWithName:@"Mars" imageName:@"mars"];
        OSIPlanet *jupiter = [[OSIPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"];
        OSIPlanet *saturn = [[OSIPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"];
        OSIPlanet *uranus = [[OSIPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"];
        OSIPlanet *neptune = [[OSIPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"];
        OSIPlanet *pluto = [[OSIPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"];
        _planetsWithoutPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, nil];
        _planetsWithPluto = @[mercury,
                              venus,
                              earth,
                              mars,
                              jupiter,
                              saturn,
                              uranus,
                              neptune,
                              pluto,
                             ];
        
    }
    return self;
        
    }

@end
