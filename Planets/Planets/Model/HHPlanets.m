//
//  HHPlanets.m
//  Planets
//
//  Created by Hayden Hastings on 7/15/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHPlanets.h"

@implementation HHPlanets

- (instancetype)initWithName:(NSString *)name
                       image:(UIImage *)image {
    self = [super init];
    if (self != nil) {
        _name = name;
        _image = image;
    }
    return self;
}

@end
