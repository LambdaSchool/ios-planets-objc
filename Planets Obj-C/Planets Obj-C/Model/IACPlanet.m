//
//  IACPlanet.m
//  Planets Obj-C
//
//  Created by Ivan Caldwell on 2/25/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import "IACPlanet.h"

@implementation IACPlanet

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self != 0) {
    // Could have just written 'if (self)' which is shorthand for the same thing
        self.name = name;
        // Because the image name is the same as "name" but lowercase
        self.imageName = [name lowercaseString];
    }
    return self;
}

- (UIImage *)image {
    return [UIImage imageNamed:self.imageName];
}
@end
