//
//  KRCPlanetsController.m
//  Planets
//
//  Created by Christopher Aronson on 7/15/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCPlanetsController.h"
#import "KRCPlanets.h"

@implementation KRCPlanetsController

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        _planetsWithoutPluto = @[
                                  [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"earth"] planetName:@"Earth"],
                                  [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"jupiter"] planetName:@"Jupiter"],
                                  [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"mars"] planetName:@"Mars"],
                                  [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"mercury"] planetName:@"Mercury"],
                                  [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"neptune"] planetName:@"Neptune"],
                                  [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"saturn"] planetName:@"Saturn"],
                                  [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"uranus"] planetName:@"Uranus"],
                                  [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"venus"] planetName:@"Venus"]
                                  ];
        _planetsWithPluto = @[
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"earth"] planetName:@"Earth"],
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"jupiter"] planetName:@"Jupiter"],
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"mars"] planetName:@"Mars"],
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"mercury"] planetName:@"Mercury"],
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"neptune"] planetName:@"Neptune"],
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"saturn"] planetName:@"Saturn"],
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"uranus"] planetName:@"Uranus"],
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"venus"] planetName:@"Venus"],
                                 [[KRCPlanets alloc] initWithImage:[UIImage imageNamed:@"pluto"] planetName:@"Pluto"]
                                 ];
    }
    
    return self;
}

- (void)isPlutoAPlanet:(BOOL *)isPlutoAPlanet {
    
    if (isPlutoAPlanet) {
        self.selectedPlanets = self.planetsWithPluto;
    } else {
        self.selectedPlanets = self.planetsWithoutPluto;
    }
}

@end
