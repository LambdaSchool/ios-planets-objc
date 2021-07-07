//
//  JCSPlanetController.h
//  PlanetsObjc
//
//  Created by Lambda_School_Loaner_95 on 4/1/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JCSPlanetController : NSObject

@property NSArray *planetsWithPluto;
@property NSArray *planetsNoPluto;

@end

NS_ASSUME_NONNULL_END


/*
 
 class PlanetController {
 
 
 var planets: [Planet] {
 
 var result = [
 Planet(name: "Mercury", imageName: "mercury"),
 Planet(name: "Venus", imageName: "venus"),
 Planet(name: "Earth", imageName: "earth"),
 Planet(name: "Mars", imageName: "mars"),
 Planet(name: "Jupiter", imageName: "jupiter"),
 Planet(name: "Saturn", imageName: "saturn"),
 Planet(name: "Uranus", imageName: "uranus"),
 Planet(name: "Neptune", imageName: "neptune"),
 ]
 
 // Is Pluto considered a planet?
 let userDefaults = UserDefaults.standard
 if userDefaults.bool(forKey: .shouldShowPlutoKey) {
 result.append(Planet(name: "Pluto", imageName: "pluto"))
 }
 
 return result
 }
 
 }
*/
