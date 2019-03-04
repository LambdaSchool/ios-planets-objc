//
//  ALWPlanetController.m
//

#import "ALWPlanetController.h"
#import "ALWPlanet.h"

@implementation ALWPlanetController

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        
        // Initialize the planetsWithoutPluto property with an array of ALWPlanets
        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                [[ALWPlanet alloc] initWithPlanetName:@"Mercury"],
                                [[ALWPlanet alloc] initWithPlanetName:@"Venus"],
                                [[ALWPlanet alloc] initWithPlanetName:@"Earth"],
                                [[ALWPlanet alloc] initWithPlanetName:@"Mars"],
                                [[ALWPlanet alloc] initWithPlanetName:@"Jupiter"],
                                [[ALWPlanet alloc] initWithPlanetName:@"Saturn"],
                                [[ALWPlanet alloc] initWithPlanetName:@"Uranus"],
                                [[ALWPlanet alloc] initWithPlanetName:@"Neptune"],
                                nil];
        
        // Initialize the planetsWithPluto property with an array of ALWPlanets
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[ALWPlanet alloc] initWithPlanetName:@"Mercury"],
                             [[ALWPlanet alloc] initWithPlanetName:@"Venus"],
                             [[ALWPlanet alloc] initWithPlanetName:@"Earth"],
                             [[ALWPlanet alloc] initWithPlanetName:@"Mars"],
                             [[ALWPlanet alloc] initWithPlanetName:@"Jupiter"],
                             [[ALWPlanet alloc] initWithPlanetName:@"Saturn"],
                             [[ALWPlanet alloc] initWithPlanetName:@"Uranus"],
                             [[ALWPlanet alloc] initWithPlanetName:@"Neptune"],
                             [[ALWPlanet alloc] initWithPlanetName:@"Pluto"],
                             nil];
    }
    return self;
}

@end
