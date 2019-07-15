//
//  TXCPlanetController.m
//  PlanetsObjC
//
//  Created by Thomas Cacciatore on 7/15/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCPlanetController.h"
#import "TXCPlanet.h"
#import <UIKit/UIKit.h>

@implementation TXCPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planets = @[
                     [[TXCPlanet alloc] initWithName:@"Mercury" imageNamed:@"mercury"],
                     [[TXCPlanet alloc] initWithName:@"Venus" imageNamed:@"venus"],
                     [[TXCPlanet alloc] initWithName:@"Earth" imageNamed:@"earth"],
                     [[TXCPlanet alloc] initWithName:@"Mars" imageNamed:@"mars"],
                     [[TXCPlanet alloc] initWithName:@"Jupiter" imageNamed:@"jupiter"],
                     [[TXCPlanet alloc] initWithName:@"Saturn" imageNamed:@"saturn"],
                     [[TXCPlanet alloc] initWithName:@"Uranus" imageNamed:@"uranus"],
                     [[TXCPlanet alloc] initWithName:@"Neptune" imageNamed:@"neptune"]

                     ];
        
        _planetsWithPluto = @[
                              [[TXCPlanet alloc] initWithName:@"Mercury" imageNamed:@"mercury"],
                              [[TXCPlanet alloc] initWithName:@"Venus" imageNamed:@"venus"],
                              [[TXCPlanet alloc] initWithName:@"Earth" imageNamed:@"earth"],
                              [[TXCPlanet alloc] initWithName:@"Mars" imageNamed:@"mars"],
                              [[TXCPlanet alloc] initWithName:@"Jupiter" imageNamed:@"jupiter"],
                              [[TXCPlanet alloc] initWithName:@"Saturn" imageNamed:@"saturn"],
                              [[TXCPlanet alloc] initWithName:@"Uranus" imageNamed:@"uranus"],
                              [[TXCPlanet alloc] initWithName:@"Neptune" imageNamed:@"neptune"],
                              [[TXCPlanet alloc] initWithName:@"Pluto" imageNamed:@"pluto"]
                              ];
    }
    return self;
}



@end
