//
//  PLAPlanet.h
//  PlanetsObjC
//
//  Created by Bobby Keffury on 1/30/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PLAPlanet : NSObject

//MARK: - Properties

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) NSData *image;

//MARK: - Initializers

- (instancetype)initWithName: (NSString *)name image: (NSData *)image;

@end

NS_ASSUME_NONNULL_END
