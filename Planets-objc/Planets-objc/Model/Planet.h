//
//  Planet.h
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Planet : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic) UIImage *image;

- (instancetype)initWithName:(NSString *)name;

@end
