//
//  ALWPlanetsCollectionViewController.h
//  

#import <UIKit/UIKit.h>

// Only works in a header file - Do not need to import the class IF using it as a type: a property/a method return type/or an argument
@class ALWPlanetController;

@class ALWSettingsViewController;

NS_ASSUME_NONNULL_BEGIN

@interface ALWPlanetsCollectionViewController : UICollectionViewController

// Reference to planetController
@property ALWPlanetController *planetController;
    
@property ALWSettingsViewController *settingsViewController;
    
@end

NS_ASSUME_NONNULL_END
