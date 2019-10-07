//
//  REPPlanet.h
//  Planets ObjC
//
//  Created by Michael Redig on 10/7/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface REPPlanet : NSObject

@property UIImage *image;
@property NSString *title;
@property double radius;
@property double sizeRelativeToJupiter;

- (instancetype)initWithPlanet: (NSString*) planet radius: (double) radius;

@end

NS_ASSUME_NONNULL_END
