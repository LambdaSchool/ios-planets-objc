//
//  JSPlanet.m
//  Planets-C
//
//  Created by Jeffrey Santana on 10/7/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSPlanet.h"
#import <UIKit/UIKit.h>

@implementation JSPlanet

- (instancetype)initWithName:(NSString *)name {
	self = [super init];
	if (self != nil) {
		_name = name.capitalizedString;
		_image = [UIImage imageNamed:name];
	}
	return self;
}

@end
