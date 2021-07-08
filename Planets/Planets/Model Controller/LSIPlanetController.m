//
//  LSIPlanetController.m
//  Planets
//
//  Created by Hector Steven on 7/15/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "LSIPlanetController.h"
#import "../Model/LSIPlanets.h"

@implementation LSIPlanetController
-(instancetype)init {
	self = [super init];
	if (self) {
		_planets = @[
					 [[LSIPlanets alloc] initWithPlanetName:@"Mercury" planetImage: [UIImage imageNamed:@"mercury"]],
					 [[LSIPlanets alloc] initWithPlanetName:@"Venus" planetImage: [UIImage imageNamed:@"venus"]],
					 [[LSIPlanets alloc] initWithPlanetName:@"Earth" planetImage: [UIImage imageNamed:@"earth"]],
					 [[LSIPlanets alloc] initWithPlanetName:@"Mars" planetImage: [UIImage imageNamed:@"mars"]],
					 [[LSIPlanets alloc] initWithPlanetName:@"Jupiter" planetImage: [UIImage imageNamed:@"jupiter"]],
					 [[LSIPlanets alloc] initWithPlanetName:@"Saturn" planetImage: [UIImage imageNamed:@"saturn"]],
					 [[LSIPlanets alloc] initWithPlanetName:@"Uranus" planetImage: [UIImage imageNamed:@"uranus"]],
					 [[LSIPlanets alloc] initWithPlanetName:@"Neptune" planetImage: [UIImage imageNamed:@"neptune"]],
					 [[LSIPlanets alloc] initWithPlanetName:@"Pluto" planetImage: [UIImage imageNamed:@"pluto"]]
					 ];
	}
	return self;
}
@end
