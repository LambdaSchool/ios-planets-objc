//
//  MJSPlanetController.m
//  Planets
//
//  Created by Michael Stoffer on 10/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import "MJSPlanetController.h"
#import "MJSPlanet.h"

@implementation MJSPlanetController

- (instancetype)init
{
    if (self = [super init]) {
        _planets = [[NSArray alloc] initWithObjects:
            [[MJSPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
            [[MJSPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
            [[MJSPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
            [[MJSPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
            [[MJSPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
            [[MJSPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
            [[MJSPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
            [[MJSPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
            nil
        ];
    }
    
    return self;
}

@end
