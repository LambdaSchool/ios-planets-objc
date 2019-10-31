//
//  TXCPlanet.h
//  PlanetsObjC
//
//  Created by Thomas Cacciatore on 7/15/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TXCPlanet : NSObject

@property NSString *name;
@property UIImage *image;

- (instancetype)initWithName:(NSString *)name
                       imageNamed:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
