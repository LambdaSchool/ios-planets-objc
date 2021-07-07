//
//  JCSPlanet.m
//  PlanetsObjc
//
//  Created by Lambda_School_Loaner_95 on 4/1/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSPlanet.h"

@implementation JCSPlanet



- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName {
    self = [super init];
    
    if (self != nil) {
        
        _name = name;
        _image = [UIImage imageNamed:imageName];
       // _imageName = imageName;
    }
    return self;
}

/*var image: UIImage {
 return UIImage(named: imageName)!
 } */

/*-(UIImage*)image {
    return [UIImage imageNamed:_imageName];
}*/

@end
