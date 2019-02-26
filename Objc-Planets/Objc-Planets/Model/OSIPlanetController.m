//
//  OSIPlanetController.m
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "OSIPlanetController.h"
#import "OSIPlanet.h"

@implementation OSIPlanetController

- (instancetype)init
{
    
    
    self = [super init];
    if (self) {
       
        _planets = [[NSArray alloc] initWithObjects:
                    [[OSIPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                    [[OSIPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                    [[OSIPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                    [[OSIPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                    [[OSIPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                    [[OSIPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                    [[OSIPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                    [[OSIPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                    nil];
    }
    return self;
        
    }

@end
