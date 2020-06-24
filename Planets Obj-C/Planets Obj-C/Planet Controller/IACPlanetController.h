//
//  IACPlanetController.h
//  Planets Obj-C
//
//  Created by Ivan Caldwell on 2/26/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IACPlanetController : NSObject
@property (nonatomic, readonly) NSArray *planetsWithPluto;
@property (nonatomic, readonly) NSArray *planetsWithoutPluto;
@end

NS_ASSUME_NONNULL_END
