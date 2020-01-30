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

- (instancetype)initWithName:(NSString *)name imageName:(NSString*)imageName
{
    self = [super init];
    if (self) {
        _name = name;
        _image = [UIImage imageNamed:@"imageName"];
    }
    return self;
}

@end
