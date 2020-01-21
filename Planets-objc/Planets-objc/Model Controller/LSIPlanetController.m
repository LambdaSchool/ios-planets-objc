//
//  LSIPlanetController.m
//  Planets-objc
//
//  Created by Lambda_School_Loaner_204 on 1/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIPlanetController.h"
#import "LSIPlanet.h"

@interface LSIPlanetController()

@end

@implementation LSIPlanetController

- (instancetype)init {
    self = [super init];
    if (self) {
        [self getPlanets];
    }
    return self;
}

- (NSArray*)getPlanets
{
    NSMutableArray *planets = [[NSMutableArray alloc] initWithObjects:
                               [[LSIPlanet alloc] initWithName:@"Mercury" image:@"mercury"],
                               [[LSIPlanet alloc] initWithName:@"Venus" image:@"venus"],
                               [[LSIPlanet alloc] initWithName:@"Earth" image:@"earth"],
                               [[LSIPlanet alloc] initWithName:@"Mars" image:@"mars"],
                               [[LSIPlanet alloc] initWithName:@"Jupiter" image:@"jupiter"],
                               [[LSIPlanet alloc] initWithName:@"Saturn" image:@"saturn"],
                               [[LSIPlanet alloc] initWithName:@"Uranus" image:@"uranus"],
                               [[LSIPlanet alloc] initWithName:@"Neptune" image:@"neptune"],
                               nil];

    if ([self shouldShowPluto]) {
        [planets addObject:[[LSIPlanet alloc] initWithName:@"Pluto" image:@"pluto"]];
    }

    return planets;
}

- (BOOL)shouldShowPluto
{
    return [NSUserDefaults.standardUserDefaults boolForKey:@"ShouldShowPluto"];
}


@end
