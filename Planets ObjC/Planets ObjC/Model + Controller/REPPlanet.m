//
//  REPPlanet.m
//  Planets ObjC
//
//  Created by Michael Redig on 10/7/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPPlanet.h"

@implementation REPPlanet

- (instancetype)initWithPlanet: (NSString*) planet radius:(double)radius {
	if (self = [super init]) {
		_image = [UIImage imageNamed:planet];
		_title = planet;
		_radius = radius;
	}
	return self;
}

- (double)sizeRelativeToJupiter {
	return _radius / 69911;
}

@end
