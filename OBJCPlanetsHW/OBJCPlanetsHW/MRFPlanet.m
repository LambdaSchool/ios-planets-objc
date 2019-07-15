//
//  MRFPlanet.m
//  OBJCPlanetsHW
//
//  Created by Michael Flowers on 7/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import "MRFPlanet.h"

@implementation MRFPlanet


//this is where you initalize your model, init()
- (instancetype)initWithPlanetName:(NSString *)planetName imageName:(NSString *)imageName {
    self = [super init];
    
    if (self != nil){
        //setup our properties
        //self.planetName = planetName
        _planetName = planetName;
        _imageName = imageName;
    }
    return self;
}

@end
