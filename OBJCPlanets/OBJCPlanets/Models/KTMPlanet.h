//
//  KTMPlanet.h
//  OBJCPlanets
//
//  Created by Kobe McKee on 7/15/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KTMPlanet : NSObject

@property NSString *name;
@property UIImage *image;

- (instancetype)initWithName: (NSString *)name image: (UIImage *)image;

@end

NS_ASSUME_NONNULL_END
