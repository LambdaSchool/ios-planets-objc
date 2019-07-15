//
//  MGBPlanetController.m
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBPlanetController.h"
#import "MGBPlanet.h"

@implementation MGBPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _planetsWithPluto =
                    @[
                      [[MGBPlanet alloc] initWithName:@"Mercury" image:@"mercury"],
                      [[MGBPlanet alloc] initWithName:@"Venus" image:@"venus"],
                      [[MGBPlanet alloc] initWithName:@"Earth" image:@"earth"],
                      [[MGBPlanet alloc] initWithName:@"Mars" image:@"mars"],
                      [[MGBPlanet alloc] initWithName:@"Jupiter" image:@"jupiter"],
                      [[MGBPlanet alloc] initWithName:@"Saturn" image:@"saturn"],
                      [[MGBPlanet alloc] initWithName:@"Uranus" image:@"uranus"],
                      [[MGBPlanet alloc] initWithName:@"Neptune" image:@"neptune"],
                      [[MGBPlanet alloc] initWithName:@"Pluto" image:@"pluto"]
                      ];
        
        _planetsWithoutPluto =
                    @[
                      [[MGBPlanet alloc] initWithName:@"Mercury" image:@"mercury"],
                      [[MGBPlanet alloc] initWithName:@"Venus" image:@"venus"],
                      [[MGBPlanet alloc] initWithName:@"Earth" image:@"earth"],
                      [[MGBPlanet alloc] initWithName:@"Mars" image:@"mars"],
                      [[MGBPlanet alloc] initWithName:@"Jupiter" image:@"jupiter"],
                      [[MGBPlanet alloc] initWithName:@"Saturn" image:@"saturn"],
                      [[MGBPlanet alloc] initWithName:@"Uranus" image:@"uranus"],
                      [[MGBPlanet alloc] initWithName:@"Neptune" image:@"neptune"]
                      ];
    }
    return self;
}

- (NSArray *)planets {
    NSUserDefaults *userDefaluts = [NSUserDefaults standardUserDefaults];
    if ([userDefaluts boolForKey:@"shouldShowPluto"]) {
        return _planetsWithPluto;
    }
    return _planetsWithoutPluto;
}

@end

