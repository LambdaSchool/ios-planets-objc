//
//  Planet.m
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Planet.h"

@implementation Planet

- (instancetype) initWithImageName:(NSString *)imageName name:(NSString *)name {
    self = [super init];
    
    if (self) {
        _imageName = imageName;
        _name = name;
    }
    return self;
}

@end
