//
//  DRMPlanet.h
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DRMPlanet : NSObject

@property UIImage *image;

@property NSString *name;

- (id)initFromString: (NSString *)name andImageName: (NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
