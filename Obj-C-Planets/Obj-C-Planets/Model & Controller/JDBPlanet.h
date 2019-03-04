//
//  JDBPlanet.h
//  Obj-C-Planets
//
//  Created by Madison Waters on 3/4/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDBPlanet : NSObject

@property NSString *name;
@property NSString *imageName;
@property (nonatomic, readonly, nullable) UIImage *image;

- (instancetype)initWithName:(NSString *)name;
//- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

// Default Property Attributes // atomic, readwrite, strong.
// nonatomic overrides atomic, readonly overrides readwrite, weak overrides strong,
// copy is like strong but by reference and not by value? Maybe?

@end

NS_ASSUME_NONNULL_END
