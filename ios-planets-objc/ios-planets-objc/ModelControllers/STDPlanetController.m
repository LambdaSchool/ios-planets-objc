//
//  STDPlanetController.m
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDPlanetController.h"
#import "STDPlanet.h"

@implementation STDPlanetController

    - (instancetype)init
    {
        self = [super init];
        if (self) {
            _planetsWithPluto = [[NSArray alloc] initWithObjects:
                                 [[STDPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                                 [[STDPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                                 [[STDPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                                 [[STDPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                                 [[STDPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                                 [[STDPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                                 [[STDPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                                 [[STDPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                                 [[STDPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"],
                                 nil];
            
            _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                 [[STDPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                                 [[STDPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                                 [[STDPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                                 [[STDPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                                 [[STDPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                                 [[STDPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                                 [[STDPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                                 [[STDPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                                 nil];
        }
        return self;
    }
    
@end
