//
//  TXCPlanet.m
//  PlanetsObjC
//
//  Created by Thomas Cacciatore on 7/15/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCPlanet.h"

@implementation TXCPlanet

- (instancetype)initWithName:(NSString *)name
                       imageName:(NSString *)imageName {
    self = [super init];
    if(self != nil) {
        _name = name;
        _imageName = imageName;
    }
    return self;
}

@end
