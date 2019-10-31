//
//  JDFPlanetsCollectionViewController.h
//  PlanetsObjC
//
//  Created by Jonathan Ferrer on 7/15/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JDFPlanetController;
@class JDFSettingsViewController;


NS_ASSUME_NONNULL_BEGIN

@interface JDFPlanetsCollectionViewController : UICollectionViewController

@property JDFPlanetController *planetController;
@property JDFSettingsViewController *settingsViewController;

@end

NS_ASSUME_NONNULL_END
