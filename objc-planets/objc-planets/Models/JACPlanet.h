//
//  JACPlanet.h
//  objc-planets
//
//  Created by Jordan Christensen on 11/5/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JACPlanet : NSObject
@property NSString *name;

- (instancetype)initWithName:(NSString *)name;
@end
