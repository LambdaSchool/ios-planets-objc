//
//  HHPlanetsController.m
//  Planets
//
//  Created by Hayden Hastings on 7/15/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHPlanetsController.h"
#import "HHPlanets.h"

@implementation HHPlanetsController

- (instancetype)init
{
    self = [super init];
    if (self != nil) {
        _planets = @[
                     [[HHPlanets alloc] initWithName:@"Mercury" image:@"mercury"],
                     [[HHPlanets alloc] initWithName:@"Venus" image:@"venus"],
                     [[HHPlanets alloc] initWithName:@"Earth" image:@"earth"],
                     [[HHPlanets alloc] initWithName:@"Mars" image:@"mars"],
                     [[HHPlanets alloc] initWithName:@"Jupiter" image:@"jupiter"],
                     [[HHPlanets alloc] initWithName:@"Saturn" image:@"saturn"],
                     [[HHPlanets alloc] initWithName:@"Uranus" image:@"uranus"],
                     [[HHPlanets alloc] initWithName:@"Neptune" image:@"nepture"]
                     ];
    }
    return self;
}

@end
