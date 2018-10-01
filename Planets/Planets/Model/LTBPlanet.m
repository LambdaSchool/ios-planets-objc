//
//  LTBPlanet.m
//  Planets
//
//  Created by Linh Bouniol on 10/1/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBPlanet.h"

@implementation LTBPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
{
//    self = [super init];
//    if (self)
    if (self = [super init]) {
        _name = name;        // self name = name
        _imageName = imageName;
    }
    return self;
}

@end
