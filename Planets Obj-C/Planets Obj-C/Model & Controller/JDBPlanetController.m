//
//  JDBPlanetController.m
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JDBPlanetController.h"
#import "Planet.h"

@implementation JDBPlanetController

-(instancetype) init {
    self = [super init];
    
    if (self) {
        
        Planet *mercury = [[Planet alloc] initWithName: @"Mercury"];
        Planet *venus = [[Planet alloc] initWithName: @"Venus"];
        Planet *earth = [[Planet alloc] initWithName: @"Earth"];
        Planet *mars = [[Planet alloc] initWithName: @"Mars"];
        Planet *jupiter = [[Planet alloc] initWithName: @"Jupiter"];
        Planet *saturn = [[Planet alloc] initWithName: @"Saturn"];
        Planet *uranus = [[Planet alloc] initWithName: @"Uranus"];
        Planet *neptune = [[Planet alloc] initWithName: @"Neptune"];
        Planet *pluto = [[Planet alloc] initWithName: @"Pluto"];
        
        _planetsWithPluto = [NSArray arrayWithObjects:mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
        
        _planetsWithoutPluto = @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune];
        
    }
    return self;
}

//-(NSArray*) planets {
//    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
//
//    if ([userDefaults boolForKey: @"ShouldShowPluto"]) {
//        return _planetsWithPluto;
//    }
//    return _planetsWithoutPluto;
//}

@end
