//
//  JDBPlanet.m
//  Obj-C-Planets
//
//  Created by Madison Waters on 3/4/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "JDBPlanet.h"

@implementation JDBPlanet

-(UIImage *)image {
    return [UIImage imageNamed:self.imageName];
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    
    if (self != nil) {
        self.name = name;
        self.imageName = [name lowercaseString];
    }
    return self;
}

@end
