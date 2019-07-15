//
//  MRFPlanetController.m
//  OBJCPlanetsHW
//
//  Created by Michael Flowers on 7/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import "MRFPlanetController.h"
//import to get the model file
#import "MRFPlanet.h"

@implementation MRFPlanetController

//initialize/set the arrays
- (instancetype) init {
    self = [super init];
    
    if (self) {
        //this model is coming from the interface file
        _planetsWOP = @[
                        [[MRFPlanet alloc]
                         initWithPlanetName:@"Mercury"
                         imageName:@"mercury"],
                        [[MRFPlanet alloc]
                         initWithPlanetName:@"Venus"
                         imageName:@"venus"],
                        [[MRFPlanet alloc]
                         initWithPlanetName:@"Earth"
                         imageName:@"earth"],
                        [[MRFPlanet alloc]
                         initWithPlanetName:@"Mars"
                         imageName:@"Mars"],
                        [[MRFPlanet alloc]
                         initWithPlanetName:@"Jupiter"
                         imageName:@"jupiter"],
                        [[MRFPlanet alloc]
                         initWithPlanetName:@"Saturn"
                         imageName:@"saturn"],
                        [[MRFPlanet alloc]
                         initWithPlanetName:@"Uranus"
                         imageName:@"uranus"],
                        [[MRFPlanet alloc]
                         initWithPlanetName:@"Neptune"
                         imageName:@"neptune"]
                        ];
        
        _planetsWP = @[
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Mercury"
                        imageName:@"mercury"],
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Venus"
                        imageName:@"venus"],
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Earth"
                        imageName:@"earth"],
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Mars"
                        imageName:@"Mars"],
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Jupiter"
                        imageName:@"jupiter"],
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Saturn"
                        imageName:@"saturn"],
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Uranus"
                        imageName:@"uranus"],
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Neptune"
                        imageName:@"neptune"],
                       [[MRFPlanet alloc]
                        initWithPlanetName:@"Pluto"
                        imageName:@"pluto"]
                       ];
    }
    return self;
}
@end
