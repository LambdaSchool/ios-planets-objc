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
-(void) updateViews {
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"isPlutoPlanet"]) {
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

- (instancetype)init {
    self = [super init];
    if (self) {
        [self updateViews];
    }
    return self;
}
@end
