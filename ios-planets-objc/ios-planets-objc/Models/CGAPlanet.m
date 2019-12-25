//
//  CGAPlanet.m
//  ios-planets-objc
//
//  Created by Conner on 10/1/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "CGAPlanet.h"

@implementation CGAPlanet

- (instancetype)initWithPlanet:(NSString *)name planetImage:(UIImage *)planetImage {
    self = [super init];
    if (self != nil) {
        _name = name;
        _planetImage = planetImage;
    }
    return self;
}

@end
