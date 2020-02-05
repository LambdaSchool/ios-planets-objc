//
//  PLAPlanetController.m
//  PlanetsObjC
//
//  Created by Bobby Keffury on 1/30/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "PLAPlanetController.h"
#import "PLAPlanet.h"

@interface PLAPlanetController ()

@property (nonatomic) NSMutableArray<PLAPlanet *> *internalPlanets;

@end

@implementation PLAPlanetController

- (instancetype)init
{
    if (self = [super init]) {
        _internalPlanets = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSArray<PLAPlanet*> *)planets
{
    return _internalPlanets.copy;
}

@end
