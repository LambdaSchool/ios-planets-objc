//
//  STDPlanet.h
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface STDPlanet : NSObject

-(instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;
@property NSString *name;
@property UIImage *image;
    
@end

NS_ASSUME_NONNULL_END
