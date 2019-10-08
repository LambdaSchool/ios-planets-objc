//
//  BYPlanetController.m
//  Planets Obj-C
//
//  Created by Bradley Yin on 10/7/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYPlanetController.h"
#import "BYPlanet.h"

@implementation BYPlanetController

//-(instancetype)init {
//    self = [super init];
//    if (self) {
//        _planets = [[NSArray alloc] initWithObjects:
//                    [[BYPlanet alloc] initWithName:@"Earth" image:[UIImage imageNamed:@"earth"]],
//                    [[BYPlanet alloc] initWithName:@"Jupiter" image:[UIImage imageNamed:@"jupiter"]],
//                    [[BYPlanet alloc] initWithName:@"Mars" image:[UIImage imageNamed:@"mars"]],
//                    [[BYPlanet alloc] initWithName:@"Mercury" image:[UIImage imageNamed:@"mercury"]],
//                    [[BYPlanet alloc] initWithName:@"Neptune" image:[UIImage imageNamed:@"neptune"]],
//                    [[BYPlanet alloc] initWithName:@"Saturn" image:[UIImage imageNamed:@"saturn"]],
//                    [[BYPlanet alloc] initWithName:@"Uranus" image:[UIImage imageNamed:@"uranus"]],
//                    [[BYPlanet alloc] initWithName:@"Venus" image:[UIImage imageNamed:@"venus"]],
//                    nil];
//    }
//    return self;
//}

-(NSArray *)planets {
    bool *shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"shouldShowPluto"];
    NSArray *planetsArray = [[NSArray alloc] initWithObjects:
                             [[BYPlanet alloc] initWithName:@"Earth" image:[UIImage imageNamed:@"earth"]],
                             [[BYPlanet alloc] initWithName:@"Jupiter" image:[UIImage imageNamed:@"jupiter"]],
                             [[BYPlanet alloc] initWithName:@"Mars" image:[UIImage imageNamed:@"mars"]],
                             [[BYPlanet alloc] initWithName:@"Mercury" image:[UIImage imageNamed:@"mercury"]],
                             [[BYPlanet alloc] initWithName:@"Neptune" image:[UIImage imageNamed:@"neptune"]],
                             [[BYPlanet alloc] initWithName:@"Saturn" image:[UIImage imageNamed:@"saturn"]],
                             [[BYPlanet alloc] initWithName:@"Uranus" image:[UIImage imageNamed:@"uranus"]],
                             [[BYPlanet alloc] initWithName:@"Venus" image:[UIImage imageNamed:@"venus"]],
                             nil];
    if (shouldShowPluto) {
        return [planetsArray arrayByAddingObject:[[BYPlanet alloc] initWithName:@"Pluto" image:[UIImage imageNamed:@"pluto"]]];
    } else {
        return planetsArray;
    }
}

@end
