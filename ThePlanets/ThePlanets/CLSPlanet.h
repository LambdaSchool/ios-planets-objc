//
//  CLSPlanet.h
//  ThePlanets
//
//  Created by Carolyn Lea on 10/1/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CLSPlanet : NSObject

@property NSString *planetName;
@property NSString *planetImageName;

-(instancetype)initWithPlanetName:(NSString *)planetName planetImageName:(NSString *)planetImageName;

@end

NS_ASSUME_NONNULL_END
