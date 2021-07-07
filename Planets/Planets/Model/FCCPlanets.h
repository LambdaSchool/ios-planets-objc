//
//  FCCPlanets.h
//  Planets
//
//  Created by Lambda_School_Loaner_34 on 4/1/19.
//  Copyright © 2019 Frulwinn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FCCPlanets : NSObject

//init
- (instancetype)initWithName:(NSString *)name image:(NSString *)image;

//properties
@property NSString *name;
@property NSString *image;

@end

NS_ASSUME_NONNULL_END
