//
//  Planet.h
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Planet : NSObject

-(instancetype) initWithName:(NSString*)name imageName:(NSString*)imageName;


@property NSString* name;
@property NSString* imageName;

@end

NS_ASSUME_NONNULL_END
