//
//  ALWPlanet.m
//  

#import "ALWPlanet.h"

@implementation ALWPlanet

- (UIImage *)image {
    return [UIImage imageNamed:self.imageName];
}

- (instancetype)initWithPlanetName:(NSString *)planetName {
    self = [super init];
    if (self != nil) {
        _planetName = planetName;
        _imageName = [planetName lowercaseString];
    }
    return self;
}

@end
