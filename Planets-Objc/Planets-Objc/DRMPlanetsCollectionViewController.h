//
//  DRMPlanetsCollectionViewController.h
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DRMPlanetController.h"
#import "DRMPlanet.h"
#import "DRMPlanetCollectionViewCell.h"
#import "DRMSettingsViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DRMPlanetsCollectionViewController : UICollectionViewController <UICollectionViewDelegateFlowLayout>

@property DRMPlanetController *planetController;

@end

NS_ASSUME_NONNULL_END
