//
//  KTMPlanetController.m
//  OBJCPlanets
//
//  Created by Kobe McKee on 7/15/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "KTMPlanetController.h"
#import "KTMPlanet.h"
#import <UIKit/UIKit.h>

@implementation KTMPlanetController


- (instancetype)init
{
    self = [super init];
    if (self) {
        _planetsNotPluto = @[
                     [[KTMPlanet alloc] initWithName:@"Earth" image: [UIImage imageNamed:@"earth"]],
                     [[KTMPlanet alloc] initWithName:@"Jupiter" image: [UIImage imageNamed:@"jupiter"]],
                     [[KTMPlanet alloc] initWithName:@"Mars" image: [UIImage imageNamed:@"mars"]],
                     [[KTMPlanet alloc] initWithName:@"Mercury" image: [UIImage imageNamed:@"mercury"]],
                     [[KTMPlanet alloc] initWithName:@"Neptune" image: [UIImage imageNamed:@"neptune"]],
                     [[KTMPlanet alloc] initWithName:@"Saturn" image: [UIImage imageNamed:@"saturn"]],
                     [[KTMPlanet alloc] initWithName:@"Uranus" image: [UIImage imageNamed:@"uranus"]],
                     [[KTMPlanet alloc] initWithName:@"Venus" image: [UIImage imageNamed:@"venus"]]
                     ];
        
        _planetsAndPluto = @[
                             [[KTMPlanet alloc] initWithName:@"Earth" image: [UIImage imageNamed:@"earth"]],
                             [[KTMPlanet alloc] initWithName:@"Jupiter" image: [UIImage imageNamed:@"jupiter"]],
                             [[KTMPlanet alloc] initWithName:@"Mars" image: [UIImage imageNamed:@"mars"]],
                             [[KTMPlanet alloc] initWithName:@"Mercury" image: [UIImage imageNamed:@"mercury"]],
                             [[KTMPlanet alloc] initWithName:@"Neptune" image: [UIImage imageNamed:@"neptune"]],
                             [[KTMPlanet alloc] initWithName:@"Saturn" image: [UIImage imageNamed:@"saturn"]],
                             [[KTMPlanet alloc] initWithName:@"Uranus" image: [UIImage imageNamed:@"uranus"]],
                             [[KTMPlanet alloc] initWithName:@"Venus" image: [UIImage imageNamed:@"venus"]],
                             [[KTMPlanet alloc] initWithName:@"Pluto" image: [UIImage imageNamed:@"pluto"]]
                             ];
    }
    return self;
}



@end
