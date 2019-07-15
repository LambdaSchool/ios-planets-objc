//
//  DLJPlanet.h
//  ObjectiveCPlanets
//
//  Created by Diante Lewis-Jolley on 7/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DLJPlanet : NSObject

// Create Properties

@property NSString *planetName;
@property NSString *imageName;

- (instancetype)initWithPlanetName:(NSString *)planetName image:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
