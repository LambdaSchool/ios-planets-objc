//
//  MJSPlanet.h
//  Planets
//
//  Created by Michael Stoffer on 10/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJSPlanet : NSObject

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@property NSString *name;
@property UIImage *image;

@end

NS_ASSUME_NONNULL_END
