//
//  GLIPlanet.h
//  Planets
//
//  Created by Julian A. Fordyce on 7/16/19.
//  Copyright © 2019 Julian A. Fordyce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GLIPlanet : NSObject

@property NSString *name;
@property UIImage *image;

- (instancetype)initWithName: (NSString *)name image: (UIImage *)image;

@end

NS_ASSUME_NONNULL_END
