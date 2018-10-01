//
//  CGAPlanetController.m
//  ios-planets-objc
//
//  Created by Conner on 10/1/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "CGAPlanetController.h"
#import "CGAPlanet.h"
#import "UIKit/UIKit.h"

@implementation CGAPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                [[CGAPlanet alloc] initWithPlanet:@"Earth" image: [UIImage imageNamed:@"earth"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Venus" image: [UIImage imageNamed:@"venus"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Mercury" image: [UIImage imageNamed:@"mercury"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Neptune" image: [UIImage imageNamed:@"neptune"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Saturn" image: [UIImage imageNamed:@"saturn"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Uranus" image: [UIImage imageNamed:@"uranus"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Jupiter" image: [UIImage imageNamed:@"jupiter"]],
                                nil];
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[CGAPlanet alloc] initWithPlanet:@"Earth" image: [UIImage imageNamed:@"earth"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Venus" image: [UIImage imageNamed:@"venus"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Mercury" image: [UIImage imageNamed:@"mercury"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Neptune" image: [UIImage imageNamed:@"neptune"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Saturn" image: [UIImage imageNamed:@"saturn"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Uranus" image: [UIImage imageNamed:@"uranus"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Jupiter" image: [UIImage imageNamed:@"jupiter"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Pluto" image: [UIImage imageNamed:@"pluto"]],
                             nil];
    }
    return self;
}

@end
