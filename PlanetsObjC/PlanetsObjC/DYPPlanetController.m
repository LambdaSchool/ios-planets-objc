//
//  DYPPlanetController.m
//  PlanetsObjC
//
//  Created by Daniela Parra on 11/10/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPPlanetController.h"
#import "DYPPlanet.h"
#import <UIKit/UIKit.h>

@implementation DYPPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                [[DYPPlanet alloc] initWithName:@"Earth" image:[UIImage imageNamed:@"earth"]],
                                [[DYPPlanet alloc] initWithName:@"Juniper" image:[UIImage imageNamed:@"juniper"]],
                                [[DYPPlanet alloc] initWithName:@"Mars" image:[UIImage imageNamed:@"mars"]],
                                [[DYPPlanet alloc] initWithName:@"Mercury" image:[UIImage imageNamed:@"mercury"]],
                                [[DYPPlanet alloc] initWithName:@"Neptune" image:[UIImage imageNamed:@"neptune"]],
                                [[DYPPlanet alloc] initWithName:@"Saturn" image:[UIImage imageNamed:@"saturn"]],
                                [[DYPPlanet alloc] initWithName:@"Uranus" image:[UIImage imageNamed:@"uranus"]],
                                [[DYPPlanet alloc] initWithName:@"Venus" image:[UIImage imageNamed:@"venus"]],
                                nil];
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[DYPPlanet alloc] initWithName:@"Earth" image:[UIImage imageNamed:@"earth"]],
                             [[DYPPlanet alloc] initWithName:@"Juniper" image:[UIImage imageNamed:@"juniper"]],
                             [[DYPPlanet alloc] initWithName:@"Mars" image:[UIImage imageNamed:@"mars"]],
                             [[DYPPlanet alloc] initWithName:@"Mercury" image:[UIImage imageNamed:@"mercury"]],
                             [[DYPPlanet alloc] initWithName:@"Neptune" image:[UIImage imageNamed:@"neptune"]],
                             [[DYPPlanet alloc] initWithName:@"Saturn" image:[UIImage imageNamed:@"saturn"]],
                             [[DYPPlanet alloc] initWithName:@"Uranus" image:[UIImage imageNamed:@"uranus"]],
                             [[DYPPlanet alloc] initWithName:@"Venus" image:[UIImage imageNamed:@"venus"]],
                             [[DYPPlanet alloc] initWithName:@"Pluto" image:[UIImage imageNamed:@"pluto"]],
                             nil];
    }
    return self;
}

@end
