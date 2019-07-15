//
//  KTMPlanet.m
//  OBJCPlanets
//
//  Created by Kobe McKee on 7/15/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "KTMPlanet.h"

@implementation KTMPlanet
- (instancetype)initWithName:(NSString *)name image:(UIImage *)image {
    self = [super init];
    
    if (self) {
        _name = name;
        _image = image;
    }
    return self;
}



@end
