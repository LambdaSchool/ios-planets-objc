//
//  CLSPlanet.m
//  ThePlanets
//
//  Created by Carolyn Lea on 10/1/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "CLSPlanet.h"

@implementation CLSPlanet

-(instancetype)initWithPlanetName:(NSString *)planetName planetImageName:(NSString *)planetImageName
{
    self = [super init];
    
    if (self != nil)
    {
        _planetName = planetName;
        _planetImageName = planetImageName;
    }
    
    return self;
}

@end
