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
        _planetsExcludingPluto = [[NSArray alloc] initWithObjects:
                                    [[PCYPlanet alloc] initWithName:@"Earth" imageName: @"Earth" ],
                                    [[PCYPlanet alloc] initWithName:@"Jupiter" imageName:@"Jupiter"],
                                    [[PCYPlanet alloc] initWithName:@"Mars" imageName:@"Mars"],
                                    [[PCYPlanet alloc] initWithName:@"Mercury" imageName:@"Mercury"],
                                    [[PCYPlanet alloc] initWithName:@"Neptune" imageName:@"Neptune"],
                                    [[PCYPlanet alloc] initWithName:@"Saturn" imageName:@"Saturn"],
                                    [[PCYPlanet alloc] initWithName:@"Uranus" imageName:@"Uranus"],
                                    [[PCYPlanet alloc] initWithName:@"Venus" imageName:@"Venus"],
                                  nil];
        
        _planetsIncludingPluto =[[NSArray alloc] initWithObjects:
                                 [[PCYPlanet alloc] initWithName:@"Earth" imageName: @"Earth" ],
                                 [[PCYPlanet alloc] initWithName:@"Jupiter" imageName:@"Jupiter"],
                                 [[PCYPlanet alloc] initWithName:@"Mars" imageName:@"Mars"],
                                 [[PCYPlanet alloc] initWithName:@"Mercury" imageName:@"Mercury"],
                                 [[PCYPlanet alloc] initWithName:@"Neptune" imageName:@"Neptune"],
                                 [[PCYPlanet alloc] initWithName:@"Pluto" imageName:@"Pluto"],
                                 [[PCYPlanet alloc] initWithName:@"Saturn" imageName:@"Saturn"],
                                 [[PCYPlanet alloc] initWithName:@"Uranus" imageName:@"Uranus"],
                                 [[PCYPlanet alloc] initWithName:@"Venus" imageName:@"Venus"],
                                 nil];
        
        
    }
    
    return self;
}

- (NSArray *)planets {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults boolForKey:@"ShouldShowPluto"]) {
        return _planetsIncludingPluto;
    }
    return _planetsExcludingPluto;

}


@end
