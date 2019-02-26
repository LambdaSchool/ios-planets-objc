//
//  OSIPlanet.m
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "OSIPlanet.h"


@implementation OSIPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
{
   
    self = [super init];
    if (self != nil) {
        _name = name;
        _imageName = imageName;
    }
    return self;
}


@end
