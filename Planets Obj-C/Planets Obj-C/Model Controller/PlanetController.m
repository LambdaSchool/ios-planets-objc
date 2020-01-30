//
//  PlanetController.m
//  Planets Obj-C
//
//  Created by Vici Shaweddy on 1/29/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "PlanetController.h"
#import "Planet.h"

@implementation PlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.planetsWithoutPluto = @[
            [[Planet alloc] initWithName:@"Mercury" imageName: @"mercury"],
            [[Planet alloc] initWithName:@"Venus" imageName: @"venus"],
            [[Planet alloc] initWithName:@"Earth" imageName: @"earth"],
            [[Planet alloc] initWithName:@"Mars" imageName: @"mars"],
            [[Planet alloc] initWithName:@"Jupiter" imageName: @"jupiter"],
            [[Planet alloc] initWithName:@"Saturn" imageName: @"saturn"],
            [[Planet alloc] initWithName:@"Uranus" imageName: @"uranus"],
            [[Planet alloc] initWithName:@"Neptune" imageName: @"neptune"]
        ];
        self.planetsWithPluto = @[
            [[Planet alloc] initWithName:@"Mercury" imageName: @"mercury"],
            [[Planet alloc] initWithName:@"Venus" imageName: @"venus"],
            [[Planet alloc] initWithName:@"Earth" imageName: @"earth"],
            [[Planet alloc] initWithName:@"Mars" imageName: @"mars"],
            [[Planet alloc] initWithName:@"Jupiter" imageName: @"jupiter"],
            [[Planet alloc] initWithName:@"Saturn" imageName: @"saturn"],
            [[Planet alloc] initWithName:@"Uranus" imageName: @"uranus"],
            [[Planet alloc] initWithName:@"Neptune" imageName: @"neptune"],
            [[Planet alloc] initWithName:@"Pluto" imageName: @"pluto"],
        ];
    }
    return self;
}

@end
