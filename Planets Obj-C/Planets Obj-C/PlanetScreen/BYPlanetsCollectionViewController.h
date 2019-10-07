//
//  BYPlanetsCollectionViewController.h
//  Planets Obj-C
//
//  Created by Bradley Yin on 10/7/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <UIKit/UIKit.h>


@class BYPlanetController;

@interface BYPlanetsCollectionViewController : UICollectionViewController

@property IBOutlet UIBarButtonItem *settingButton;

@property BYPlanetController *planetController;


@end

