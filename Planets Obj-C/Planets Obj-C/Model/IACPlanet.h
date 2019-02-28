//
//  IACPlanet.h
//  Planets Obj-C
//
//  Created by Ivan Caldwell on 2/25/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IACPlanet : NSObject
@property NSString *name;
@property NSString *imageName;
@property (nonatomic, readonly, nullable) UIImage *image;

// This is declaring an init method on Planet to take parameters.
- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
