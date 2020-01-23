//
//  CCCPlanet.h
//  ObjCPlanets
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
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
