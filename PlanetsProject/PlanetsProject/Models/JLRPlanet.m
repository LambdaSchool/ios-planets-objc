//
//  JLRPlanet.m
//  PlanetsProject
//
//  Created by Jesse Ruiz on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRPlanet.h"

@implementation JLRPlanet

- (instancetype)initWithName:(NSString *)name image:(NSString *)image {
    self = [super init];
    if (self) {
        _name = name;
        _image = image;
    }
    return self;
}
@end
