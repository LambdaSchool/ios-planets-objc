//
//  MRFPlanet.h
//  OBJCPlanetsHW
//
//  Created by Michael Flowers on 7/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MRFPlanet : NSObject
//create the properties for the model
@property NSString *planetName;
@property NSString *imageName;


//create the initializer. Remember we want to declare the functions we want to use later, and initializers are included in that
- (instancetype)initWithPlanetName:(NSString *)planetName
                         imageName:(NSString *)imageName;
@end

NS_ASSUME_NONNULL_END
