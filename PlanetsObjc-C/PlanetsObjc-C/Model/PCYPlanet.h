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

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@property NSString *name;
@property NSString *imageName;

@end

NS_ASSUME_NONNULL_END
