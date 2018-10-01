//
//  LTBPlanet.h
//  Planets
//
//  Created by Linh Bouniol on 10/1/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTBPlanet : NSObject

@property NSString *name;
@property NSString *imageName;

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
