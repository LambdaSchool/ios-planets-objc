//
//  BYPlanet.h
//  Planets Obj-C
//
//  Created by Bradley Yin on 10/7/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface BYPlanet : NSObject

@property NSString *name;
@property UIImage *image;


-(instancetype)initWithName:(NSString*)name image:(UIImage*)image;

@end


