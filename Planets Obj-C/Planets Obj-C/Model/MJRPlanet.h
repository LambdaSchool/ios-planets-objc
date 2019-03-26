//
//  MJRPlanet.h
//  Planets Obj-C
//
//  Created by Moses Robinson on 3/25/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJRPlanet : NSObject

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image;

@property NSString *name;
@property UIImage *image;

@end

NS_ASSUME_NONNULL_END
