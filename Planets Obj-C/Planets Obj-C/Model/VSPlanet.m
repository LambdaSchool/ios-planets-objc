//
//  VSPlanet.m
//  VSPlanets Obj-C
//
//  Created by Vici Shaweddy on 1/29/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VSPlanet.h"

@implementation VSPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
{
    if (self = [super init]) {
        _name = name;
        _imageName = imageName;
    }
    return self;
}

- (UIImage *)image {
    return [UIImage imageNamed:self.imageName];
}

@end
