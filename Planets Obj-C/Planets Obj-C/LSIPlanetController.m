//
//  LSIPlanetController.m
//  Planets Obj-C
//
//  Created by Isaac Lyons on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIPlanetController.h"
#import "LSIPlanet.h"

@implementation LSIPlanetController

- (instancetype)init {
    self = [super init];
    if (self) {
        _planets = [[NSArray alloc] initWithObjects:
                    [[LSIPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                    [[LSIPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                    [[LSIPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                    [[LSIPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                    [[LSIPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                    [[LSIPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                    [[LSIPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                    [[LSIPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                    [[LSIPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"],
                    nil];
    }
    return self;
}

@end
