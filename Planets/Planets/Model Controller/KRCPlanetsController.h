//
//  KRCPlanetsController.h
//  Planets
//
//  Created by Christopher Aronson on 7/15/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KRCPlanetsController : NSObject

@property NSArray *planetsWithoutPluto;
@property NSArray *planetsWithPluto;
@property NSArray *selectedPlanets;

- (void)isPlutoAPlanet:(BOOL *)isPlutoAPlanet;

@end

NS_ASSUME_NONNULL_END
