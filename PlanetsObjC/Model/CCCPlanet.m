//
//  CCCPlanet.m
//  ObjCPlanets
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
//

#import "CCCPlanet.h"

@implementation CCCPlanet

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
