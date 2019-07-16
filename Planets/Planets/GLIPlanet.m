//
//  GLIPlanet.m
//  Planets
//
//  Created by Julian A. Fordyce on 7/16/19.
//  Copyright © 2019 Julian A. Fordyce. All rights reserved.
//

#import "GLIPlanet.h"

@implementation GLIPlanet

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image
{
    self = [super init];
    if (self) {
        _name = name;
        _image = image;
    }
    return self;
}

@end
