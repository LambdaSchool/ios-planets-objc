//
//  cdbPlanet.m
//  Planets-ObjC
//
//  Created by Ciara Beitel on 11/5/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cdbPlanet.h"

@implementation cdbPlanet

- (instancetype)initWithName:(NSString *)name image:(NSString *)image {
    self = [super init];
    if (self) {
        _name = name;
        _image = [UIImage imageNamed:image];
    }
    return self;
}

@end
