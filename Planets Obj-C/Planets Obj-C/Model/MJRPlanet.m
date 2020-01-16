//
//  MJRPlanet.m
//  Planets Obj-C
//
//  Created by Moses Robinson on 3/25/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "MJRPlanet.h"

@implementation MJRPlanet

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image
{
    
    self = [super init];
    
    if (self != nil) {
        
        _name = name;
        _image = image;
    }
    return self;
}
@end
