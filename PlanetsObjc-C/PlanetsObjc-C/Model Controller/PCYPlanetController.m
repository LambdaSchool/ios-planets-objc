//
//  PCYPlanetController.m
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYPlanetController.h"
#import "PCYPlanet.h"
#import "PCYPlanetsCollectionViewController.h"

@implementation PCYPlanetController

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        PCYPlanet *Earth = [[PCYPlanet alloc] initWithPlanet:@"Earth" planetImage: @"Earth" ];
        PCYPlanet *Jupiter = [[PCYPlanet alloc] initWithPlanet:@"Jupiter" planetImage:@"Jupiter"];
        PCYPlanet *Mars = [[PCYPlanet alloc] initWithPlanet:@"Mars" planetImage:@"Mars"];
        PCYPlanet *Mercury = [[PCYPlanet alloc] initWithPlanet:@"Mercury" planetImage:@"Mercury"];
        PCYPlanet *Neptune = [[PCYPlanet alloc] initWithPlanet:@"Neptune" planetImage:@"Neptune"];
        PCYPlanet *Pluto = [[PCYPlanet alloc] initWithPlanet:@"Pluto" planetImage:@"Pluto"];
        PCYPlanet *Saturn = [[PCYPlanet alloc] initWithPlanet:@"Saturn" planetImage:@"Saturn"];
        PCYPlanet *Uranus = [[PCYPlanet alloc] initWithPlanet:@"Uranus" planetImage:@"Uranus"];
        PCYPlanet *Venus = [[PCYPlanet alloc] initWithPlanet:@"Venus" planetImage:@"Venus"];
        
        _planetsIncludingPluto = [NSArray arrayWithObjects:Earth, Jupiter, Mars, Mercury, Neptune, Pluto, Saturn, Uranus, Venus, nil];
        _planetsExcludingPluto = [NSArray arrayWithObjects:Earth, Jupiter, Mars, Mercury, Neptune, Saturn, Uranus, nil];
        
        
    }
    
    return self;
}

@end
