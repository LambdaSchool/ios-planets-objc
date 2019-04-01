//
//  JCSPlanet.h
//  PlanetsObjc
//
//  Created by Lambda_School_Loaner_95 on 4/1/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JCSPlanet : NSObject

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@property NSString *name;
//@property NSString *imageName;
@property UIImage *image;


@end

NS_ASSUME_NONNULL_END
