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
					[[REPPlanet alloc] initWithPlanet:@"mercury"],
					[[REPPlanet alloc] initWithPlanet:@"venus"],
					[[REPPlanet alloc] initWithPlanet:@"earth"],
					[[REPPlanet alloc] initWithPlanet:@"mars"],
					[[REPPlanet alloc] initWithPlanet:@"jupiter"],
					[[REPPlanet alloc] initWithPlanet:@"saturn"],
					[[REPPlanet alloc] initWithPlanet:@"uranus"],
					[[REPPlanet alloc] initWithPlanet:@"neptune"],
					   nil];
		_pluto = [[REPPlanet alloc] initWithPlanet:@"pluto"];

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
