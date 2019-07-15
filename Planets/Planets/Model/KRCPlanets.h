//
//  KRCPlanets.h
//  Planets
//
//  Created by Christopher Aronson on 7/15/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KRCPlanets : NSObject

@property UIImage *planetImage;
@property NSString *planetName;

- (instancetype)initWithImage: (UIImage *)planetImage planetName: (NSString *)planetName;
@end

NS_ASSUME_NONNULL_END
