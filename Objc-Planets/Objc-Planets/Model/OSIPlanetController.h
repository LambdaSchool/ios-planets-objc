//
//  OSIPlanetController.h
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OSIPlanetController : NSObject

@property (nonatomic, copy, readonly) NSArray *planetsWithoutPluto;
@property (nonatomic, copy, readonly) NSArray *planetsWithPluto;


@end

NS_ASSUME_NONNULL_END
