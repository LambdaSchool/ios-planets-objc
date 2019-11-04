//
//  JACPlanetController.h
//  objc-planets
//
//  Created by Jordan Christensen on 11/5/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JACPlanet.h"
@interface JACPlanetController : NSObject
@property NSArray *planets;
@property (nonatomic) bool isPlutoPlanet;

- (bool)isPlutoPlanet;

@end
