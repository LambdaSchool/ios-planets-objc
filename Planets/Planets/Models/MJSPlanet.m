//
//  MJSPlanet.m
//  Planets
//
//  Created by Michael Stoffer on 10/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import "MJSPlanet.h"
#import <UIKit/UIKit.h>

@implementation MJSPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
{
    if (self = [super init]) {
        _name = name;
        _image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", imageName]];
    }
    
    return self;
}

@end
