//
//  Planet.h
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Planet : NSObject

-(instancetype) initWithName:(NSString*)name image:(UIImage*)image;


@property NSString* name;
@property UIImage* image;

@end

NS_ASSUME_NONNULL_END
