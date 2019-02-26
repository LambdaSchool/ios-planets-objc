//
//  JDBPlanetController.h
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDBPlanetController : NSObject

@property (readonly) NSArray* planets;
@property (readonly) NSArray* planetsWithPluto;
@property (readonly) NSArray* planetsWithoutPluto;

@end

NS_ASSUME_NONNULL_END
