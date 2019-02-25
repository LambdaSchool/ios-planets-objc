//
//  ABCPlanet.h
//  PlanetsObjC
//
//  Created by Austin Cole on 2/25/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ABCPlanet : NSObject

@property(nonatomic) NSString* name;
@property(nonatomic) UIImage* image;

- (id)init;

@end

NS_ASSUME_NONNULL_END
