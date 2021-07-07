//
//  ALWPlanetsCollectionViewController.h
//  

#import <UIKit/UIKit.h>

@class ALWPlanetController;
@class ALWPlanetCollectionViewCell;

NS_ASSUME_NONNULL_BEGIN

@interface ALWPlanetsCollectionViewController : UICollectionViewController

@property ALWPlanetController *planetController;
@property ALWPlanetCollectionViewCell *planetCollectionViewCell;

@end

NS_ASSUME_NONNULL_END
