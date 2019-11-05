//
//  cdbPlanet.h
//  Planets-ObjC
//
//  Created by Ciara Beitel on 11/5/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface cdbPlanet : NSObject

@property NSString *name;
@property UIImage *image;

- (instancetype)initWithName:(NSString*)name image:(NSString*)image;

@end


