//
//  DRMPlanet.m
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMPlanet.h"

@implementation DRMPlanet

- (id)initFromString: (NSString *)name andImageName: (NSString *)imageName {
    self = [super init];
    if (self != nil) {
        [self setName:name];
        [self setImage:[UIImage imageNamed:imageName]];
    }
    return self;
}

@end
