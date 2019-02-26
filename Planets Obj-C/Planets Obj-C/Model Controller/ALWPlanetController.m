//
//  ALWPlanetController.m
//  

#import "ALWPlanetController.h"
#import "ALWPlanet.h"

@implementation ALWPlanetController

// override the superclass implementation
- (instancetype)init {
        self = [super init];
        if (self) {
            
            // SWIFT
            // var mercury = Planet(name: "Mercury")
            // var venus = Planet(name: "Venus")
            // var planetsWithPluto = [mercury, venus, ...]
            // var planetsWithoutPluto = [mercury, venus, ... pluto]
            
            ALWPlanet *mercury = [[ALWPlanet alloc] initWithName:@"Mercury"];
            ALWPlanet *venus = [[ALWPlanet alloc] initWithName:@"Venus"];
            ALWPlanet *earth = [[ALWPlanet alloc] initWithName:@"Earth"];
            ALWPlanet *mars = [[ALWPlanet alloc] initWithName:@"Mars"];
            ALWPlanet *jupiter = [[ALWPlanet alloc] initWithName:@"Jupiter"];
            ALWPlanet *saturn = [[ALWPlanet alloc] initWithName:@"Saturn"];
            ALWPlanet *uranus = [[ALWPlanet alloc] initWithName:@"Uranus"];
            ALWPlanet *neptune = [[ALWPlanet alloc] initWithName:@"Neptune"];
            ALWPlanet *pluto = [[ALWPlanet alloc] initWithName:@"Pluto"];
            
            // Option 1
            // These properties are readonly, so we can't do self.planetsWithPluto, we have to use the _underscore to modify the instance variable directly.
            _planetsWithPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
            
            // Option 2
            _planetsWithoutPluto = @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune];
            
            
//            _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
//                                    [[ALWPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
//                                    [[ALWPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
//                                    [[ALWPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
//                                    [[ALWPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
//                                    [[ALWPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
//                                    [[ALWPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
//                                    [[ALWPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
//                                    [[ALWPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
//                                    nil];
//
//            _planetsWithPluto = [[NSArray alloc] initWithObjects:
//                                [[ALWPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
//                                [[ALWPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
//                                [[ALWPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
//                                [[ALWPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
//                                [[ALWPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
//                                [[ALWPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
//                                [[ALWPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
//                                [[ALWPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
//                                [[ALWPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"],
//                                nil];
    }
    return self;
}
    
@end
