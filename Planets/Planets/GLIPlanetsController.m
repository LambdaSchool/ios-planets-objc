//
//  GLIPlanetsController.m
//  Planets
//
//  Created by Julian A. Fordyce on 7/16/19.
//  Copyright © 2019 Julian A. Fordyce. All rights reserved.
//

#import "GLIPlanetsController.h"
#import "GLIPlanet.h"

@implementation GLIPlanetsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _plantetsWithoutPluto = @[
                     [[GLIPlanet alloc]initWithName:@"Saturn" image:@"saturn"],
                     [[GLIPlanet alloc]initWithName:@"Mecury" image:@"mecury"],
                     [[GLIPlanet alloc]initWithName:@"Neptune" image:@"neptune"],
                     [[GLIPlanet alloc]initWithName:@"Earth" image:@"earth"],
                     [[GLIPlanet alloc]initWithName:@"Jupiter" image:@"jupiter"],
                     [[GLIPlanet alloc]initWithName:@"Uranus" image:@"uranus"],
                     [[GLIPlanet alloc]initWithName:@"Venus" image:@"venus"],
                     [[GLIPlanet alloc]initWithName:@"Mars" image:@"mars"]
                     ];
        _planetsWithPluto = @[
                              [[GLIPlanet alloc]initWithName:@"Saturn" image:@"saturn"],
                              [[GLIPlanet alloc]initWithName:@"Mecury" image:@"mecury"],
                              [[GLIPlanet alloc]initWithName:@"Neptune" image:@"neptune"],
                              [[GLIPlanet alloc]initWithName:@"Earth" image:@"earth"],
                              [[GLIPlanet alloc]initWithName:@"Jupiter" image:@"jupiter"],
                              [[GLIPlanet alloc]initWithName:@"Uranus" image:@"uranus"],
                              [[GLIPlanet alloc]initWithName:@"Venus" image:@"venus"],
                              [[GLIPlanet alloc]initWithName:@"Mars" image:@"mars"],
                              [[GLIPlanet alloc]initWithName:@"Pluto" image:@"pluto"]

                              ];
        
    }
    return self;
}

- (NSArray *)planets {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults boolForKey:@"shouldShowPluto"]) {
        return _planetsWithPluto;
    }
    return _plantetsWithoutPluto;
}

@end
