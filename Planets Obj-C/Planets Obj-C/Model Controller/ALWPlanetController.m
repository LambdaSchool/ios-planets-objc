//
//  ALWPlanetController.m
//  

#import "ALWPlanetController.h"
#import "ALWPlanet.h"

@implementation ALWPlanetController

// override the superclass implementation
- (instancetype)init
    {
        self = [super init];
        if (self) {
            _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                    [[ALWPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                                    [[ALWPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                                    [[ALWPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                                    [[ALWPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                                    [[ALWPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                                    [[ALWPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                                    [[ALWPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                                    [[ALWPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                                    nil];
            
            _planetsWithPluto = [[NSArray alloc] initWithObjects:
                                [[ALWPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                                [[ALWPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                                [[ALWPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                                [[ALWPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                                [[ALWPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                                [[ALWPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                                [[ALWPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                                [[ALWPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                                [[ALWPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"],
                                nil];
        }
        return self;
    }
    
    // var planetsWithoutPluto = [
    //      Planet(name: "Mercury", imageName: "mercury"), ...
    //]
    
@end
