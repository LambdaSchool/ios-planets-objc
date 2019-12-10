//
//  GIPPlanet.h
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GIPPlanet : NSObject

@property NSString* name;
@property UIImage* image;
@property double size;

- (instancetype)initWithName:(NSString*)name image:(UIImage*)image size:(double)size;

@end

NS_ASSUME_NONNULL_END
