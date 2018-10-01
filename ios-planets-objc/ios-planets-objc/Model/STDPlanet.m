//
//  STDPlanet.m
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDPlanet.h"
#import <UIKit/UIKit.h>

@implementation STDPlanet

    - (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
    {
        self = [super init];
        if (self) {
            _name = name;
            _image = [UIImage imageNamed:imageName];
        }
        return self;
    }
    
@end
