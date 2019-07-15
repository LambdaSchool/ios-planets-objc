//
//  MGBPlanet.h
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MGBPlanet : NSObject

@property NSString *name;
@property NSString *image;

- (instancetype)initWithName:(NSString *)name
                       image:(NSString *)image;

@end

NS_ASSUME_NONNULL_END
;
