//
//  PLAPlanet.m
//  PlanetsObjC
//
//  Created by Bobby Keffury on 1/30/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "PLAPlanet.h"

@implementation PLAPlanet

- (instancetype)initWithName:(NSString *)name image:(NSData *)image {
    self = [super init];
    if (self) {
        _name = name;
        _image = image;
    }
    return self;
}



@end
