//
//  JCSPlanetController.m
//  PlanetsObjc
//
//  Created by Lambda_School_Loaner_95 on 4/1/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSPlanetController.h"
#import "JCSPlanet.h"

@implementation JCSPlanetController

- (instancetype)init {
    self = [super init];
    
    if (self != nil) {
        
        _planetsNoPluto = [[NSArray alloc] initWithObjects:[[JCSPlanet alloc]initWithName:@"Mercury" imageName:@"mercury"], [[JCSPlanet alloc]initWithName:@"Venus" imageName:@"venus"], [[JCSPlanet alloc]initWithName:@"Earth" imageName:@"earth"], [[JCSPlanet alloc]initWithName:@"Mars" imageName:@"mars"], [[JCSPlanet alloc]initWithName:@"Jupiter" imageName:@"jupiter"], [[JCSPlanet alloc]initWithName:@"Saturn" imageName:@"saturn"], [[JCSPlanet alloc]initWithName:@"Uranus" imageName:@"uranus"], [[JCSPlanet alloc]initWithName:@"Neptune" imageName:@"neptune"], nil];
        
        _planetsWithPluto = [[NSArray alloc] initWithObjects:[[JCSPlanet alloc]initWithName:@"Mercury" imageName:@"mercury"], [[JCSPlanet alloc]initWithName:@"Venus" imageName:@"venus"], [[JCSPlanet alloc]initWithName:@"Earth" imageName:@"earth"], [[JCSPlanet alloc]initWithName:@"Mars" imageName:@"mars"], [[JCSPlanet alloc]initWithName:@"Jupiter" imageName:@"jupiter"], [[JCSPlanet alloc]initWithName:@"Saturn" imageName:@"saturn"], [[JCSPlanet alloc]initWithName:@"Uranus" imageName:@"uranus"], [[JCSPlanet alloc]initWithName:@"Neptune" imageName:@"neptune"], [[JCSPlanet alloc]initWithName:@"Pluto" imageName:@"pluto"], nil];
        
    }
    return self;
}


@end
