//
//  DRMPlanetController.h
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DRMPlanetController : NSObject

@property NSArray *planetsWithPluto;
@property NSArray *planetsWithoutPluto;

- (id)init;

@end

NS_ASSUME_NONNULL_END
