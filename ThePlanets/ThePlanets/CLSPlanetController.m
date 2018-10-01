//
//  CLSPlanetController.m
//  ThePlanets
//
//  Created by Carolyn Lea on 10/1/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "CLSPlanetController.h"
#import "CLSPlanet.h"

@implementation CLSPlanetController

-(instancetype)init
{
    self = [super init];
    
    if (self)
    {
        _planetsWithoutPluto = [[NSMutableArray alloc] initWithObjects:[[CLSPlanet alloc] initWithPlanetName:@"Mercury" planetImageName: @"mercury"],
            [[CLSPlanet alloc] initWithPlanetName:@"Venus" planetImageName: @"venus"],
            [[CLSPlanet alloc] initWithPlanetName:@"Earth" planetImageName: @"earth"],
            [[CLSPlanet alloc] initWithPlanetName:@"Mars" planetImageName: @"mars"],
            [[CLSPlanet alloc] initWithPlanetName:@"Jupiter" planetImageName: @"jupiter"],
            [[CLSPlanet alloc] initWithPlanetName:@"Saturn" planetImageName: @"saturn"],
            [[CLSPlanet alloc] initWithPlanetName:@"Uranus" planetImageName: @"uranus"],
            [[CLSPlanet alloc] initWithPlanetName:@"Neptune" planetImageName: @"neptune"],nil];
    }
    
    return self;
}

-(void)addPluto
{
    *_doesIncludePluto = [[NSUserDefaults standardUserDefaults] boolForKey:@""];
    
    if (_doesIncludePluto)
    {
        CLSPlanet *pluto = [[CLSPlanet alloc] initWithPlanetName:@"Pluto" planetImageName:@"pluto"];
        [_planetsWithoutPluto addObject: pluto];
    }
}

@end
