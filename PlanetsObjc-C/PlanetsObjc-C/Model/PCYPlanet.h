//
//  PCYPlanet.h
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PCYPlanet : NSObject

    - (instancetype)initWithPlanet:(NSString *)planet planetImage:(NSString *)planetImage;

    @property NSString *planet;
    @property NSData *planetImage;

@end

NS_ASSUME_NONNULL_END
