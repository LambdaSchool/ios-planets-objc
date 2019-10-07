//
//  BYPlanet.m
//  Planets Obj-C
//
//  Created by Bradley Yin on 10/7/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYPlanet.h"

@implementation BYPlanet

-(instancetype)initWithName:(NSString*)name image:(UIImage*)image {
    self = [super init];
    if (self) {
        _name = name;
        _image = image;
    }
    return self;
}

@end
