//
//  CGAPlanet.h
//  ios-planets-objc
//
//  Created by Conner on 10/1/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CGAPlanet : NSObject

- (instancetype)initWithPlanet:(NSString *)name planetImage:(UIImage *)planetImage;

@property NSString *name;
@property UIImage *planetImage;

@end

NS_ASSUME_NONNULL_END
