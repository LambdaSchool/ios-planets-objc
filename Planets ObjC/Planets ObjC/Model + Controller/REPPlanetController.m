//
//  REPPlanetController.m
//  Planets ObjC
//
//  Created by Michael Redig on 10/7/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPPlanetController.h"
#import "REPPlanet.h"

@interface REPPlanetController() {
	NSArray* _allPlanets;
	REPPlanet* _pluto;
}
@end

@implementation REPPlanetController

- (instancetype)init {
	if (self = [super init]) {
		_allPlanets = [NSArray arrayWithObjects:
					[[REPPlanet alloc] initWithPlanet:@"mercury" radius:2440],
					[[REPPlanet alloc] initWithPlanet:@"venus" radius:6052],
					[[REPPlanet alloc] initWithPlanet:@"earth" radius:6371],
					[[REPPlanet alloc] initWithPlanet:@"mars" radius:3390],
					[[REPPlanet alloc] initWithPlanet:@"jupiter" radius:69911],
					[[REPPlanet alloc] initWithPlanet:@"saturn" radius:58232],
					[[REPPlanet alloc] initWithPlanet:@"uranus" radius:25362],
					[[REPPlanet alloc] initWithPlanet:@"neptune" radius:24622],
					   nil];
		_pluto = [[REPPlanet alloc] initWithPlanet:@"pluto" radius:1188];

	}
	return self;
}

- (NSArray *)planets {
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	if ([defaults boolForKey:@"plutoIsPlanet"]) {
		return [_allPlanets arrayByAddingObject:_pluto];
	} else {
		return _allPlanets;
	}
}

@end
