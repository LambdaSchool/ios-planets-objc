//
//  NYCPlanetController.m
//  PlanetsObjectiveC
//
//  Created by Nathanael Youngren on 4/1/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCPlanetController.h"
#import "NYCPlanet.h"
#import <UIKit/UIKit.h>

@implementation NYCPlanetController

- (instancetype)initWithPluto {
    self = [super init];
    if (self) {
        _planets = [[NSArray alloc] initWithObjects:
                        [[NYCPlanet alloc] initWithPlanetName: @"earth" andWithImage: @"earth"],
                        [[NYCPlanet alloc] initWithPlanetName: @"jupiter" andWithImage: @"jupiter"],
                        [[NYCPlanet alloc] initWithPlanetName: @"mars" andWithImage: @"mars"],
                        [[NYCPlanet alloc] initWithPlanetName: @"mercury" andWithImage: @"mercury"],
                        [[NYCPlanet alloc] initWithPlanetName: @"neptune" andWithImage: @"neptune"],
                        [[NYCPlanet alloc] initWithPlanetName: @"saturn" andWithImage: @"saturn"],
                        [[NYCPlanet alloc] initWithPlanetName: @"uranus" andWithImage: @"uranus"],
                        [[NYCPlanet alloc] initWithPlanetName: @"venus" andWithImage: @"venus"],
                        [[NYCPlanet alloc] initWithPlanetName: @"pluto" andWithImage: @"pluto"],
                    nil];
    }
    return self;
}

- (instancetype)initWithoutPluto {
    self = [super init];
    if (self) {
        _planets = [[NSArray alloc] initWithObjects:
                        [[NYCPlanet alloc] initWithPlanetName: @"earth" andWithImage: @"earth"],
                        [[NYCPlanet alloc] initWithPlanetName: @"jupiter" andWithImage: @"jupiter"],
                        [[NYCPlanet alloc] initWithPlanetName: @"mars" andWithImage: @"mars"],
                        [[NYCPlanet alloc] initWithPlanetName: @"mercury" andWithImage: @"mercury"],
                        [[NYCPlanet alloc] initWithPlanetName: @"neptune" andWithImage: @"neptune"],
                        [[NYCPlanet alloc] initWithPlanetName: @"saturn" andWithImage: @"saturn"],
                        [[NYCPlanet alloc] initWithPlanetName: @"uranus" andWithImage: @"uranus"],
                        [[NYCPlanet alloc] initWithPlanetName: @"venus" andWithImage: @"venus"],
                    nil];
    }
    return self;
}

@end
