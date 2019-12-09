//
//  LSIPlanet.h
//  Planets Obj-C
//
//  Created by Isaac Lyons on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPlanet : NSObject

@property NSString *name;
@property NSString *imageName;

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@end
