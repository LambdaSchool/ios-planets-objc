//
//  JSPlanetsController.m
//  Planets-C
//
//  Created by Jeffrey Santana on 10/7/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSPlanetsController.h"
#import "JSPlanet.h"

#define IncludePlutoKey @"IncludePluto"

@implementation JSPlanetsController

- (bool)isPlutoAPlanet {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	 
	return [defaults objectForKey:IncludePlutoKey];
}

- (NSArray *)planets {
	if (_isPlutoAPlanet) {
		return [[NSArray alloc] initWithObjects:
				[[JSPlanet alloc] initWithName:@"earth"],
				[[JSPlanet alloc] initWithName:@"jupiter"],
				[[JSPlanet alloc] initWithName:@"mars"],
				[[JSPlanet alloc] initWithName:@"mercury"],
				[[JSPlanet alloc] initWithName:@"neptune"],
				[[JSPlanet alloc] initWithName:@"pluto"],
				[[JSPlanet alloc] initWithName:@"saturn"],
				[[JSPlanet alloc] initWithName:@"uranus"],
				[[JSPlanet alloc] initWithName:@"venus"],
				[[JSPlanet alloc] initWithName:@"pluto"],
				nil];
	} else {
		return [[NSArray alloc] initWithObjects:
				[[JSPlanet alloc] initWithName:@"earth"],
				[[JSPlanet alloc] initWithName:@"jupiter"],
				[[JSPlanet alloc] initWithName:@"mars"],
				[[JSPlanet alloc] initWithName:@"mercury"],
				[[JSPlanet alloc] initWithName:@"neptune"],
				[[JSPlanet alloc] initWithName:@"pluto"],
				[[JSPlanet alloc] initWithName:@"saturn"],
				[[JSPlanet alloc] initWithName:@"uranus"],
				[[JSPlanet alloc] initWithName:@"venus"],
				nil];
	}
}

@end
