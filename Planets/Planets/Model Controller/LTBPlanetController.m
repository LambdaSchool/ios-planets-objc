//
//  LTBPlanetController.m
//  Planets
//
//  Created by Linh Bouniol on 10/1/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBPlanetController.h"
#import "LTBPlanet.h"

@implementation LTBPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                [[LTBPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                                [[LTBPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                                [[LTBPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                                [[LTBPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                                [[LTBPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                                [[LTBPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                                [[LTBPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                                [[LTBPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                                nil];
        
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[LTBPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                             [[LTBPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                             [[LTBPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                             [[LTBPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                             [[LTBPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                             [[LTBPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                             [[LTBPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                             [[LTBPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                             [[LTBPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"],
                             nil];
    }
    return self;
}

// new method
- (NSArray *)planets
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults boolForKey:@"ShouldShowPluto"]) {
        return _planetsWithPluto;
    }
    return _planetsWithoutPluto;
}

@end
