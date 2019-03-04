//
//  Planet.h
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Planet : NSObject

// @property (attribute) propertyType* propertyName;
//@property (nonatomic) UIImage* image;
@property (nonatomic, readonly, nullable) UIImage* image;
@property NSString* imageName;
@property NSString* name;

// - (returnType)methodNameWith1stParameterExternalName: (1stParameterType*) 1stParameterLocalName
//                          2ndParameterName:(2ndParameterExternalName*) 2ndParameterLocalName;

//- (instancetype)initWithImageName: (NSString*)imageName name:(NSString*)name;
- (instancetype)initWithName:(NSString*)name;

@end

NS_ASSUME_NONNULL_END
