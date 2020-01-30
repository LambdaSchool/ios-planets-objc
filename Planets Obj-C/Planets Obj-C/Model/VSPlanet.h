//
//  VSPlanet.h
//  VSPlanets Obj-C
//
//  Created by Vici Shaweddy on 1/29/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface VSPlanet : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *imageName;
@property (nonatomic, readonly) UIImage *image;

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@end

