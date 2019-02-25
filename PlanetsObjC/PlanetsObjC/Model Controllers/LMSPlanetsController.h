//
//  LMSPlanetsController.h
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMSPlanetsController : NSObject

@property (nonatomic, copy, readonly) NSArray *planetsWithoutPluto;
@property (nonatomic, copy, readonly) NSArray *planetsWithPluto;

- (id)init;

@end

NS_ASSUME_NONNULL_END
