//
//  DRMPlanetController.m
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMPlanetController.h"
#import "DRMPlanet.h"

@implementation DRMPlanetController

- (id)init {
    self = [super init];
    if (self != nil) {
        DRMPlanet *mercury = [[DRMPlanet alloc] initFromString: @"mercury" andImageName: @"mercury"];
        DRMPlanet *venus = [[DRMPlanet alloc] initFromString: @"venus" andImageName: @"venus"];
        DRMPlanet *earth = [[DRMPlanet alloc] initFromString: @"earth" andImageName: @"earth"];
        DRMPlanet *mars = [[DRMPlanet alloc] initFromString: @"mars" andImageName: @"mars"];
        DRMPlanet *jupiter = [[DRMPlanet alloc] initFromString: @"jupiter" andImageName: @"jupiter"];
        DRMPlanet *saturn = [[DRMPlanet alloc] initFromString: @"saturn" andImageName: @"saturn"];
        DRMPlanet *uranus = [[DRMPlanet alloc] initFromString: @"uranus" andImageName: @"uranus"];
        DRMPlanet *neptune = [[DRMPlanet alloc] initFromString: @"neptune" andImageName: @"neptune"];
        DRMPlanet *pluto = [[DRMPlanet alloc] initFromString: @"pluto" andImageName: @"pluto"];
        
        _planetsWithPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
        _planetsWithoutPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, nil];
    }
    
    return self;
}

@end
