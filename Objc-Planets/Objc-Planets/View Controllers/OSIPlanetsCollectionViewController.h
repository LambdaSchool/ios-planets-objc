//
//  OSIPlanetsCollectionViewController.h
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OSISettingsViewController.h"
#import "OSIPlanetsCollectionViewCell.h"
#import "OSIPlanet.h"
#import "OSIPlanetController.h"

@class OSIPlanetController;


NS_ASSUME_NONNULL_BEGIN

@interface OSIPlanetsCollectionViewController : UICollectionViewController <UICollectionViewDataSource>

@property OSIPlanetController * planetController;

@end

NS_ASSUME_NONNULL_END
