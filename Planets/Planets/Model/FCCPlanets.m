//
//  FCCPlanets.m
//  Planets
//
//  Created by Lambda_School_Loaner_34 on 4/1/19.
//  Copyright © 2019 Frulwinn. All rights reserved.
//

#import "FCCPlanets.h"

@implementation FCCPlanets

- (instancetype)initWithName:(NSString *)name image:(NSString *)image {
    self = [super init];
    if (self != nil) {
        
        _name = name;
        _image = image;
    }
    
    return self;
}

@end
