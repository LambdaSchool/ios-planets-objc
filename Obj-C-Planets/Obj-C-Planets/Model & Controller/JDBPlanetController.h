//
//  JDBPlanetController.h
//  Obj-C-Planets
//
//  Created by Madison Waters on 3/4/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDBPlanetController : NSObject

// An array of planets with and without Pluto
@property (nonatomic, readonly) NSArray* planetsWithPluto;
@property (nonatomic, readonly) NSArray* planetsWithoutPluto;

@end

NS_ASSUME_NONNULL_END
