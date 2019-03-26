//
//  MJRPlanetController.m
//  Planets Obj-C
//
//  Created by Moses Robinson on 3/25/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "MJRPlanetController.h"
#import "MJRPlanet.h"

@implementation MJRPlanetController

-(instancetype)init
{
    self = [super init];
    
    if (self != nil) {
        
        _planetsMinusPluto = [[NSArray alloc]initWithObjects:
                              [[MJRPlanet alloc] initWithName: @"Mercury" image: [UIImage imageNamed: @"mercury"]],
                              [[MJRPlanet alloc] initWithName: @"Venus" image: [UIImage imageNamed: @"venus"]],
                              [[MJRPlanet alloc] initWithName: @"Earth" image: [UIImage imageNamed: @"earth"]],
                              [[MJRPlanet alloc] initWithName: @"Mars" image: [UIImage imageNamed: @"mars"]],
                              [[MJRPlanet alloc] initWithName: @"Jupiter" image: [UIImage imageNamed: @"Jupiter"]],
                              [[MJRPlanet alloc] initWithName: @"Saturn" image: [UIImage imageNamed: @"saturn"]],
                              [[MJRPlanet alloc] initWithName: @"Uranus" image: [UIImage imageNamed: @"uranus"]],
                              [[MJRPlanet alloc] initWithName: @"Neptune" image: [UIImage imageNamed: @"neptune"]], nil];
        
        _planetsPlusPluto = [[NSArray alloc]initWithObjects:
                             [[MJRPlanet alloc] initWithName: @"Mercury" image: [UIImage imageNamed: @"mercury"]],
                             [[MJRPlanet alloc] initWithName: @"Venus" image: [UIImage imageNamed: @"venus"]],
                             [[MJRPlanet alloc] initWithName: @"Earth" image: [UIImage imageNamed: @"earth"]],
                             [[MJRPlanet alloc] initWithName: @"Mars" image: [UIImage imageNamed: @"mars"]],
                             [[MJRPlanet alloc] initWithName: @"Jupiter" image: [UIImage imageNamed: @"Jupiter"]],
                             [[MJRPlanet alloc] initWithName: @"Saturn" image: [UIImage imageNamed: @"saturn"]],
                             [[MJRPlanet alloc] initWithName: @"Uranus" image: [UIImage imageNamed: @"uranus"]],
                             [[MJRPlanet alloc] initWithName: @"Neptune" image: [UIImage imageNamed: @"neptune"]],
                             [[MJRPlanet alloc] initWithName: @"Pluto" image: [UIImage imageNamed: @"pluto"]],
                             nil];
    }
    return self;
}
@end
