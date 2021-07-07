//
//  DYPPlanet.h
//  PlanetsObjC
//
//  Created by Daniela Parra on 11/10/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYPPlanet : NSObject

- (instancetype) initWithName:(NSString *)name image:(UIImage *)image;

@property NSString *name;
@property UIImage *image;

@end

NS_ASSUME_NONNULL_END
