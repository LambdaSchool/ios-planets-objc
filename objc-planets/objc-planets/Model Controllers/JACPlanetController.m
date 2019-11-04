//
//  JACPlanetController.m
//  objc-planets
//
//  Created by Jordan Christensen on 11/5/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACPlanetController.h"
#import "JACPlanet.h"

@implementation JACPlanetController

@synthesize isPlutoPlanet;
- (bool)isPlutoPlanet  {
    NSNumber *isPlanet = [[NSUserDefaults standardUserDefaults] objectForKey:@"isPlutoPlanet"];
    if (isPlanet == [NSNumber numberWithInt:1]) {
        return YES;
    } else {
        return false;
    }
}

- (instancetype)init {
    self = [super init];
    if (self) {
        if (isPlutoPlanet) {
        _planets = [[NSArray alloc] initWithObjects:
                    [[JACPlanet alloc] initWithName:@"earth"],
                    [[JACPlanet alloc] initWithName:@"jupiter"],
                    [[JACPlanet alloc] initWithName:@"mars"],
                    [[JACPlanet alloc] initWithName:@"mercury"],
                    [[JACPlanet alloc] initWithName:@"neptune"],
                    [[JACPlanet alloc] initWithName:@"saturn"],
                    [[JACPlanet alloc] initWithName:@"uranus"],
                    [[JACPlanet alloc] initWithName:@"venus"],
                    [[JACPlanet alloc] initWithName:@"pluto"],
                    nil];
        } else {
        _planets = [[NSArray alloc] initWithObjects:
                    [[JACPlanet alloc] initWithName:@"earth"],
                    [[JACPlanet alloc] initWithName:@"jupiter"],
                    [[JACPlanet alloc] initWithName:@"mars"],
                    [[JACPlanet alloc] initWithName:@"mercury"],
                    [[JACPlanet alloc] initWithName:@"neptune"],
                    [[JACPlanet alloc] initWithName:@"saturn"],
                    [[JACPlanet alloc] initWithName:@"uranus"],
                    [[JACPlanet alloc] initWithName:@"venus"],
                    nil];
        }
    }
    return self;
}
@end
