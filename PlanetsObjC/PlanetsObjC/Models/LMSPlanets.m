//
//  LMSPlanets.m
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSPlanets.h"

@implementation LMSPlanets

- (id)initFromString:(NSString *)name andImageName:(NSString *)imageName {
    self = [super init];
    
    if(self != nil) {
        _name = [name.capitalizedString copy];
        _image = [UIImage imageNamed:imageName];
    }
    return self;
}

@end
