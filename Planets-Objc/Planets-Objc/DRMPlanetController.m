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
        DRMPlanet *mercury = [[DRMPlanet alloc] initFromString: @"Mercury" andImageName: @"mercury"];
        DRMPlanet *venus = [[DRMPlanet alloc] initFromString: @"Venus" andImageName: @"venus"];
        DRMPlanet *earth = [[DRMPlanet alloc] initFromString: @"Earth" andImageName: @"earth"];
        DRMPlanet *mars = [[DRMPlanet alloc] initFromString: @"Mars" andImageName: @"mars"];
        DRMPlanet *jupiter = [[DRMPlanet alloc] initFromString: @"Jupiter" andImageName: @"jupiter"];
        DRMPlanet *saturn = [[DRMPlanet alloc] initFromString: @"Saturn" andImageName: @"saturn"];
        DRMPlanet *uranus = [[DRMPlanet alloc] initFromString: @"Uranus" andImageName: @"uranus"];
        DRMPlanet *neptune = [[DRMPlanet alloc] initFromString: @"Neptune" andImageName: @"neptune"];
        DRMPlanet *pluto = [[DRMPlanet alloc] initFromString: @"Pluto" andImageName: @"pluto"];
        
        _planetsWithPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
        _planetsWithoutPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, nil];
    }
    
    return self;
}

- (BOOL)shouldShowPluto {
    return [NSUserDefaults.standardUserDefaults boolForKey:@"ShouldShowPluto"];
}

- (void)setShouldShowPluto:(BOOL)shouldShowPluto {
    [NSUserDefaults.standardUserDefaults setBool:shouldShowPluto forKey:@"ShouldShowPluto"];
    [NSNotificationCenter.defaultCenter postNotificationName:@"ShowPlutoChanged" object:nil];
}

- (NSArray *)planets {
    if (self.shouldShowPluto) {
        return _planetsWithPluto;
    } else {
        return _planetsWithoutPluto;
    }
}

@end
