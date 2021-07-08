//
//  LSIPlanets.h
//  Planets
//
//  Created by Hector Steven on 7/15/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface LSIPlanets : NSObject

@property NSString *planetName;
@property UIImage *planetImage;

- (instancetype) initWithPlanetName:(NSString *)planetName planetImage:(UIImage *) planetImage;

@end

NS_ASSUME_NONNULL_END
