//
//  LMSPlanetsController.m
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSPlanetsController.h"
#import "LMSPlanets.h"

@implementation LMSPlanetsController

- (id)init {
    self = [super init];
    if (self != nil) {
        LMSPlanets *mercury = [[LMSPlanets alloc] initFromString: @"mercury" andImageName: @"mercury"];
        LMSPlanets *venus = [[LMSPlanets alloc] initFromString: @"venus" andImageName: @"venus"];
        LMSPlanets *earth = [[LMSPlanets alloc] initFromString: @"earth" andImageName: @"earth"];
        LMSPlanets *mars = [[LMSPlanets alloc] initFromString: @"mars" andImageName: @"mars"];
        LMSPlanets *jupiter = [[LMSPlanets alloc] initFromString: @"jupiter" andImageName: @"jupiter"];
        LMSPlanets *saturn = [[LMSPlanets alloc] initFromString: @"saturn" andImageName: @"saturn"];
        LMSPlanets *uranus = [[LMSPlanets alloc] initFromString: @"uranus" andImageName: @"uranus"];
        LMSPlanets *neptune = [[LMSPlanets alloc] initFromString: @"neptune" andImageName: @"neptune"];
        LMSPlanets *pluto = [[LMSPlanets alloc] initFromString: @"pluto" andImageName: @"pluto"];
        
        _planetsWithPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
        _planetsWithoutPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, nil];
        
        // Array Literal - @[your array here]
        // Dictionary Literal - @ { your dictionaries here }
        // Boolean Literal - @YES, @NO
    }
    
    return self;
}

@end
