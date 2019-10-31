//
//  CCCPlanet.h
//  ObjCPlanets
//
//  Created by Ryan Murphy on 7/15/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCCPlanet : NSObject

@property NSString *name;
@property NSString *imageName;
@property (nonatomic, readonly, nullable) UIImage *image;


- (instancetype)initWithName:(NSString *)name;


@end

NS_ASSUME_NONNULL_END
