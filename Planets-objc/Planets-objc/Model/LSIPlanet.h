//
//  LSIPlanet.h
//  Planets-objc
//
//  Created by Lambda_School_Loaner_204 on 1/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#ifndef LSIPlanet_h
#define LSIPlanet_h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LSIPlanet : NSObject

@property NSString *name;
@property UIImage *image;

- (instancetype)initWithName:(NSString *)name image:(UIImage*)image;

@end


#endif /* LSIPlanet_h */
