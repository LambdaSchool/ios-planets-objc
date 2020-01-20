//
//  DMOPlanet.h
//  DMOPlanets
//
//  Created by morse on 1/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DMOPlanet : NSObject

@property NSString *name;
@property NSString *image;

- (instancetype)initWithName:(NSString *)name;

@end
