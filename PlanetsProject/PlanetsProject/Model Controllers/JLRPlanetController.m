//
//  JLRPlanetController.m
//  PlanetsProject
//
//  Created by Jesse Ruiz on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRPlanetController.h"
#import "JLRPlanet.h"

@implementation JLRPlanetController

- (instancetype)init {
    self = [super init];
    if (self) {
        _planetsWithPluto = [[NSArray alloc]initWithObjects: [[JLRPlanet alloc] initWithName:@"Mercury" image:@"mercury"], [[JLRPlanet alloc] initWithName:@"Venus" image:@"venus"], [[JLRPlanet alloc] initWithName:@"Earth" image:@"earth"], [[JLRPlanet alloc] initWithName:@"Mars" image:@"mars"], [[JLRPlanet alloc] initWithName:@"Jupiter" image:@"jupiter"], [[JLRPlanet alloc] initWithName:@"Saturn" image:@"saturn"], [[JLRPlanet alloc] initWithName:@"Uranus" image:@"uranus"], [[JLRPlanet alloc] initWithName:@"Neptune" image:@"neptune"], [[JLRPlanet alloc] initWithName:@"Pluto" image:@"pluto"], nil];
        
        _planetsWithoutPluto = [[NSArray alloc]initWithObjects: [[JLRPlanet alloc] initWithName:@"Mercury" image:@"mercury"], [[JLRPlanet alloc] initWithName:@"Venus" image:@"venus"], [[JLRPlanet alloc] initWithName:@"Earth" image:@"earth"], [[JLRPlanet alloc] initWithName:@"Mars" image:@"mars"], [[JLRPlanet alloc] initWithName:@"Jupiter" image:@"jupiter"], [[JLRPlanet alloc] initWithName:@"Saturn" image:@"saturn"], [[JLRPlanet alloc] initWithName:@"Uranus" image:@"uranus"], [[JLRPlanet alloc] initWithName:@"Neptune" image:@"neptune"], nil];
    }
    return self;
}

- (NSArray *)planets {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults boolForKey:@"shouldShowPluto"]) {
        return _planetsWithPluto;
    }
    return _planetsWithoutPluto;
}

@end
