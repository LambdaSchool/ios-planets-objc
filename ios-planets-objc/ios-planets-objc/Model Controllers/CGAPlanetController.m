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
                                [[CGAPlanet alloc] initWithPlanet:@"Earth" planetImage: [UIImage imageNamed:@"earth"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Venus" planetImage: [UIImage imageNamed:@"venus"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Mercury" planetImage: [UIImage imageNamed:@"mercury"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Neptune" planetImage: [UIImage imageNamed:@"neptune"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Saturn" planetImage: [UIImage imageNamed:@"saturn"]],
                                [[CGAPlanet alloc] initWithPlanet:@"Jupiter" planetImage: [UIImage imageNamed:@"jupiter"]],
                                nil];
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[CGAPlanet alloc] initWithPlanet:@"Earth" planetImage: [UIImage imageNamed:@"earth"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Venus" planetImage: [UIImage imageNamed:@"venus"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Mercury" planetImage: [UIImage imageNamed:@"mercury"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Neptune" planetImage: [UIImage imageNamed:@"neptune"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Saturn" planetImage: [UIImage imageNamed:@"saturn"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Jupiter" planetImage: [UIImage imageNamed:@"jupiter"]],
                             [[CGAPlanet alloc] initWithPlanet:@"Pluto" planetImage: [UIImage imageNamed:@"pluto"]],
                             nil];
    }
    return self;
}

@end
