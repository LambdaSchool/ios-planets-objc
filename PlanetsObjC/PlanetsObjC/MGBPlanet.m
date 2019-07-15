//
//  MGBPlanet.m
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBPlanet.h"

@implementation MGBPlanet

- (instancetype)initWithName:(NSString *)name
                       image:(UIImage *)image {
    self = [super init];
    if (self != nil) {
        _name = [[NSString alloc] init];
        _image = [UIImage imageNamed:_name];
    }
    return self;
}

@end
