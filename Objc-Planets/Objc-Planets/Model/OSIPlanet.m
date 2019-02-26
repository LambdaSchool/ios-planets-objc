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
    NSLog(@"self: %@", self);
    self = [super init];
    if (self != nil) {
        imageName = imageName;
        name = name;
    }
    return self;
}


@end
