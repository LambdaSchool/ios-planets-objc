//
//  LMSPlanets.h
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMSPlanets : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) UIImage *image;

- (id)initFromString: (NSString *)name andImageName: (NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
