//
//  TXCPlanetController.m
//  PlanetsObjC
//
//  Created by Thomas Cacciatore on 7/15/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCPlanetController.h"
#import "TXCPlanet.h"

@implementation TXCPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planets = @[
                     [[TXCPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                     [[TXCPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                     [[TXCPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                     [[TXCPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                     [[TXCPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                     [[TXCPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                     [[TXCPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                     [[TXCPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"]

                     ];
        
        _planetsWithPluto = @[
                              [[TXCPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                              [[TXCPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                              [[TXCPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                              [[TXCPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                              [[TXCPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                              [[TXCPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                              [[TXCPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                              [[TXCPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                              [[TXCPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"]
                              ];
    }
    return self;
}



@end
