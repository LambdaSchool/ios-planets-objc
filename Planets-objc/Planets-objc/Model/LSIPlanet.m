//
//  LSIPlanet.m
//  Planets-objc
//
//  Created by Lambda_School_Loaner_204 on 1/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSIPlanet.h"

@implementation LSIPlanet

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image
{
    self = [super init];
    if (self) {
        _name = name;
        _image = image;
    }
    return self;
}

@end
