//
//  LSIPlanet.m
//  Planets Obj-C
//
//  Created by Isaac Lyons on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIPlanet.h"

@implementation LSIPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName {
    self = [super init];
    if (self) {
        _name = name;
        _imageName = imageName;
    }
    return self;
}

@end
