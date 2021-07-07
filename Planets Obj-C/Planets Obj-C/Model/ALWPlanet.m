//
//  ALWPlanet.m
//  

#import "ALWPlanet.h"

@implementation ALWPlanet
    
- (UIImage *)image {
    return [UIImage imageNamed:self.imageName];
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self != nil) {
        self.name = name;
        self.imageName = [name lowercaseString];
    }
    return self;
}
    
@end
