//
//  ABCPlanetController.m
//  PlanetsObjC
//
//  Created by Austin Cole on 2/25/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import "ABCPlanetController.h"
#import "ABCPlanet.h"
#import <UIKit/UIKit.h>

@implementation ABCPlanetController

- (id)init {
    self = [super init];
    _plutoIsAPlanet = false;
    return self;
}
- (NSArray *)arrayOfPlanetsWithPluto {
    ABCPlanet *mercury = [[ABCPlanet alloc] init];
    [mercury setName: @"Mercury"];
    [mercury setImage: [UIImage imageNamed: @"mercury"]];
    
    ABCPlanet *venus = [[ABCPlanet alloc] init];
    [venus setName: @"Venus"];
    [venus setImage: [UIImage imageNamed: @"venus"]];
    
    ABCPlanet *earth = [[ABCPlanet alloc] init];
    [earth setName: @"Earth"];
    [earth setImage: [UIImage imageNamed: @"earth"]];
    
    ABCPlanet *mars = [[ABCPlanet alloc] init];
    [mars setName: @"Mars"];
    [mars setImage: [UIImage imageNamed: @"mars"]];
    
    ABCPlanet *jupiter = [[ABCPlanet alloc] init];
    [jupiter setName: @"Jupiter"];
    [jupiter setImage: [UIImage imageNamed: @"jupiter"]];
    
    ABCPlanet *saturn = [[ABCPlanet alloc] init];
    [saturn setName: @"Saturn"];
    [saturn setImage: [UIImage imageNamed: @"saturn"]];
    
    ABCPlanet *uranus = [[ABCPlanet alloc] init];
    [uranus setName: @"Uranus"];
    [uranus setImage: [UIImage imageNamed: @"uranus"]];
    
    ABCPlanet *neptune = [[ABCPlanet alloc] init];
    [neptune setName: @"Neptune"];
    [neptune setImage: [UIImage imageNamed: @"neptune"]];
    
    ABCPlanet *pluto = [[ABCPlanet alloc] init];
    [neptune setName: @"Pluto"];
    [neptune setImage: [UIImage imageNamed: @"pluto"]];
    
    NSMutableArray *planetsArray = [[NSMutableArray alloc] initWithCapacity:40];
    [planetsArray addObject:mercury];
    [planetsArray addObject:venus];
    [planetsArray addObject:earth];
    [planetsArray addObject:mars];
    [planetsArray addObject:jupiter];
    [planetsArray addObject:saturn];
    [planetsArray addObject:uranus];
    [planetsArray addObject:neptune];
    [planetsArray addObject:pluto];
    
    return planetsArray;
}
- (NSArray *)arrayOfPlanetsWithoutPluto {
    
    ABCPlanet *mercury = [[ABCPlanet alloc] init];
    [mercury setName: @"Mercury"];
    [mercury setImage: [UIImage imageNamed: @"mercury"]];
    
    ABCPlanet *venus = [[ABCPlanet alloc] init];
    [venus setName: @"Venus"];
    [venus setImage: [UIImage imageNamed: @"venus"]];
    
    ABCPlanet *earth = [[ABCPlanet alloc] init];
    [earth setName: @"Earth"];
    [earth setImage: [UIImage imageNamed: @"earth"]];
    
    ABCPlanet *mars = [[ABCPlanet alloc] init];
    [mars setName: @"Mars"];
    [mars setImage: [UIImage imageNamed: @"mars"]];
    
    ABCPlanet *jupiter = [[ABCPlanet alloc] init];
    [jupiter setName: @"Jupiter"];
    [jupiter setImage: [UIImage imageNamed: @"jupiter"]];
    
    ABCPlanet *saturn = [[ABCPlanet alloc] init];
    [saturn setName: @"Saturn"];
    [saturn setImage: [UIImage imageNamed: @"saturn"]];
    
    ABCPlanet *uranus = [[ABCPlanet alloc] init];
    [uranus setName: @"Uranus"];
    [uranus setImage: [UIImage imageNamed: @"uranus"]];
    
    ABCPlanet *neptune = [[ABCPlanet alloc] init];
    [neptune setName: @"Neptune"];
    [neptune setImage: [UIImage imageNamed: @"neptune"]];
    
    NSMutableArray *planetsArray = [[NSMutableArray alloc] initWithCapacity:40];
    [planetsArray addObject:mercury];
    [planetsArray addObject:venus];
    [planetsArray addObject:earth];
    [planetsArray addObject:mars];
    [planetsArray addObject:jupiter];
    [planetsArray addObject:saturn];
    [planetsArray addObject:uranus];
    [planetsArray addObject:neptune];
    
    return planetsArray;
}


@end
