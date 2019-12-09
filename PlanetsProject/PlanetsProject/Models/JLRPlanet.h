//
//  JLRPlanet.h
//  PlanetsProject
//
//  Created by Jesse Ruiz on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JLRPlanet : NSObject

@property NSString *name;
@property NSString *image;

- (instancetype)initWithName:(NSString *)name image:(NSString*)image;

@end
