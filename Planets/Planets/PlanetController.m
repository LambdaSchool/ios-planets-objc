//
//  PlanetController.m
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "PlanetController.h"
#import "Planet.h"
@implementation PlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planets = [[NSArray alloc] initWithObjects:
                    [[Planet alloc] initWithName:@"Mercury" image: [UIImage imageNamed:@"mercury"]],
                    [[Planet alloc] initWithName:@"Venus" image: [UIImage imageNamed:@"venus"]],
                    [[Planet alloc] initWithName:@"Earth" image: [UIImage imageNamed:@"earth"]],
                    [[Planet alloc] initWithName:@"Mars" image: [UIImage imageNamed:@"mars"]],
                    [[Planet alloc] initWithName:@"Jupiter" image: [UIImage imageNamed:@"jupiter"]],
                    [[Planet alloc] initWithName:@"Saturn" image: [UIImage imageNamed:@"saturn"]],
                    [[Planet alloc] initWithName:@"Uranus" image: [UIImage imageNamed:@"uranus"]],
                    [[Planet alloc] initWithName:@"Neptune" image: [UIImage imageNamed:@"neptune"]]
                    , nil];
        
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                    [[Planet alloc] initWithName:@"Pluto" image: [UIImage imageNamed:@"pluto"]],
                    [[Planet alloc] initWithName:@"Mercury" image: [UIImage imageNamed:@"mercury"]],
                    [[Planet alloc] initWithName:@"Venus" image: [UIImage imageNamed:@"venus"]],
                    [[Planet alloc] initWithName:@"Earth" image: [UIImage imageNamed:@"earth"]],
                    [[Planet alloc] initWithName:@"Mars" image: [UIImage imageNamed:@"mars"]],
                    [[Planet alloc] initWithName:@"Jupiter" image: [UIImage imageNamed:@"jupiter"]],
                    [[Planet alloc] initWithName:@"Saturn" image: [UIImage imageNamed:@"saturn"]],
                    [[Planet alloc] initWithName:@"Uranus" image: [UIImage imageNamed:@"uranus"]],
                    [[Planet alloc] initWithName:@"Neptune" image: [UIImage imageNamed:@"neptune"]]
                    , nil];
    }
    return self;
}

@end
