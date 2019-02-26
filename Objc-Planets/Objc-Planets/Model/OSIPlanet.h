//
//  OSIPlanet.h
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OSIPlanet : NSObject

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;


@property NSString *name;
@property NSString *imageName;
@property UIImage *image;





@end

NS_ASSUME_NONNULL_END
