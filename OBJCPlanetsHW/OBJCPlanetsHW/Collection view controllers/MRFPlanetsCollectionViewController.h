//
//  MRFPlanetsCollectionViewController.h
//  OBJCPlanetsHW
//
//  Created by Michael Flowers on 7/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class MRFPlanetController; //this is like a lazy var
@interface MRFPlanetsCollectionViewController : UICollectionViewController

- (IBAction)settingsButton:(UIBarButtonItem *)sender;
@property MRFPlanetController *planetController; //make sure to implement @class
@end

NS_ASSUME_NONNULL_END
