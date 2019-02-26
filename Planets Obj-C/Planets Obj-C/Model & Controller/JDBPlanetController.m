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
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[Planet alloc] initWithImageName:@"earth" name: @"Earth"],
                             [[Planet alloc] initWithImageName:@"jupiter" name: @"Jupiter"],
                             [[Planet alloc] initWithImageName:@"mars" name: @"Mars"],
                             [[Planet alloc] initWithImageName:@"mercury" name: @"Mercury"],
                             [[Planet alloc] initWithImageName:@"nepture" name: @"Neptune"],
                             [[Planet alloc] initWithImageName:@"saturn" name: @"Saturn"],
                             [[Planet alloc] initWithImageName:@"uranus" name: @"Uranus"],
                             [[Planet alloc] initWithImageName:@"venus" name: @"Venus"],
                             [[Planet alloc] initWithImageName:@"pluto" name: @"Pluto"],
                             nil];
        
        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                             [[Planet alloc] initWithImageName:@"earth" name: @"Earth"],
                             [[Planet alloc] initWithImageName:@"jupiter" name: @"Jupiter"],
                             [[Planet alloc] initWithImageName:@"mars" name: @"Mars"],
                             [[Planet alloc] initWithImageName:@"mercury" name: @"Mercury"],
                             [[Planet alloc] initWithImageName:@"nepture" name: @"Neptune"],
                             [[Planet alloc] initWithImageName:@"saturn" name: @"Saturn"],
                             [[Planet alloc] initWithImageName:@"uranus" name: @"Uranus"],
                             [[Planet alloc] initWithImageName:@"venus" name: @"Venus"],
                             nil];
    }
    return self;
}

-(NSArray*) planets {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    if ([userDefaults boolForKey: @"ShouldShowPluto"]) {
        return _planetsWithPluto;
    }
    return _planetsWithoutPluto;
}

@end
