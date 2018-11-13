//
//  DYPPlanet.m
//  PlanetsObjC
//
//  Created by Daniela Parra on 11/10/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPPlanet.h"


@implementation DYPPlanet

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
