//
//  ALWPlanet.m
//  

#import "ALWPlanet.h"

@implementation ALWPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
{
    self = [super init];
    if (self != nil) {
        // self.name = name
        // self.image = image
        _name = name;
        _imageName = imageName;
    }
    return self;
}
    
@end
