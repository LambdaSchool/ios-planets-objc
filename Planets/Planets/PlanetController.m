//
//  PlanetController.m
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import "PlanetController.h"
#import "Planet.h"
@implementation PlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planets = [[NSArray alloc] initWithObjects:
                    [[Planet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                    [[Planet alloc] initWithName:@"Venus" imageName:@"venus"],
                    [[Planet alloc] initWithName:@"Earth" imageName:@"earth"],
                    [[Planet alloc] initWithName:@"Mars" imageName:@"mars"],
                    [[Planet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                    [[Planet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                    [[Planet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                    [[Planet alloc] initWithName:@"Neptune" imageName:@"neptune"]
                    , nil];
        
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                    [[Planet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                    [[Planet alloc] initWithName:@"Venus" imageName:@"venus"],
                    [[Planet alloc] initWithName:@"Earth" imageName:@"earth"],
                    [[Planet alloc] initWithName:@"Mars" imageName:@"mars"],
                    [[Planet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                    [[Planet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                    [[Planet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                    [[Planet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                    [[Planet alloc] initWithName:@"Pluto" imageName:@"pluto"]
                    , nil];
    }
    return self;
}

@end
