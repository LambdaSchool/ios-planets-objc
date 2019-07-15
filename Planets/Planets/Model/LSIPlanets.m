//
//  LSIPlanets.m
//  Planets
//
//  Created by Hector Steven on 7/15/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "LSIPlanets.h"

@implementation LSIPlanets
- (instancetype) initWithPlanetName:(NSString *)planetName planetImage:(UIImage *) planetImage {
	self = [super init];
	if (self) {
		_planetName = planetName;
		_planetImage = planetImage;
	}
	return self;
}
@end
