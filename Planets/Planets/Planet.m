//
//  Planet.m
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Planet.h"

@implementation Planet

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
