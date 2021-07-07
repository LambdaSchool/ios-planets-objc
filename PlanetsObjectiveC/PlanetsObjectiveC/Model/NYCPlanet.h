//
//  NYCPlanet.h
//  PlanetsObjectiveC
//
//  Created by Nathanael Youngren on 4/1/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCPlanet : NSObject

- (instancetype)initWithPlanetName:(NSString *) name andWithImage:(NSString *) image;

@property NSString *planetName;
@property UIImage *planetImage;

@end

NS_ASSUME_NONNULL_END
