//
//  KRCPlanets.m
//  Planets
//
//  Created by Christopher Aronson on 7/15/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCPlanets.h"

@implementation KRCPlanets

- (instancetype)initWithImage: (UIImage *)planetImage planetName: (NSString *)planetName {
    self = [super init];
    
    if (self) {
        _planetImage = planetImage;
        _planetName = planetName;
    }
    
    return self;
}
@end
