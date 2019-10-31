//
//  JDFPlanet.m
//  PlanetsObjC
//
//  Created by Jonathan Ferrer on 7/15/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

#import "JDFPlanet.h"

@implementation JDFPlanet

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
