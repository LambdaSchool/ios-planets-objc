//
//  Planet.m
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Planet.h"

@implementation Planet

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
