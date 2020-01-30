//
//  VSPlanetController.m
//  VSPlanets Obj-C
//
//  Created by Vici Shaweddy on 1/29/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VSPlanetController.h"
#import "VSPlanet.h"

@implementation VSPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.planetsWithoutPluto = @[
            [[VSPlanet alloc] initWithName:@"Mercury" imageName: @"mercury"],
            [[VSPlanet alloc] initWithName:@"Venus" imageName: @"venus"],
            [[VSPlanet alloc] initWithName:@"Earth" imageName: @"earth"],
            [[VSPlanet alloc] initWithName:@"Mars" imageName: @"mars"],
            [[VSPlanet alloc] initWithName:@"Jupiter" imageName: @"jupiter"],
            [[VSPlanet alloc] initWithName:@"Saturn" imageName: @"saturn"],
            [[VSPlanet alloc] initWithName:@"Uranus" imageName: @"uranus"],
            [[VSPlanet alloc] initWithName:@"Neptune" imageName: @"neptune"]
        ];
        self.planetsWithPluto = @[
            [[VSPlanet alloc] initWithName:@"Mercury" imageName: @"mercury"],
            [[VSPlanet alloc] initWithName:@"Venus" imageName: @"venus"],
            [[VSPlanet alloc] initWithName:@"Earth" imageName: @"earth"],
            [[VSPlanet alloc] initWithName:@"Mars" imageName: @"mars"],
            [[VSPlanet alloc] initWithName:@"Jupiter" imageName: @"jupiter"],
            [[VSPlanet alloc] initWithName:@"Saturn" imageName: @"saturn"],
            [[VSPlanet alloc] initWithName:@"Uranus" imageName: @"uranus"],
            [[VSPlanet alloc] initWithName:@"Neptune" imageName: @"neptune"],
            [[VSPlanet alloc] initWithName:@"Pluto" imageName: @"pluto"],
        ];
    }
    return self;
}

@end
