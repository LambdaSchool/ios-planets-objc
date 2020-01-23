//
//  CCCPlanetController.h
//  ObjCPlanets
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCCPlanetController : NSObject

@property (nonatomic, readonly) NSArray *planetsWithPluto;

@property (nonatomic, readonly) NSArray *planetsWithoutPluto;

@end

NS_ASSUME_NONNULL_END
