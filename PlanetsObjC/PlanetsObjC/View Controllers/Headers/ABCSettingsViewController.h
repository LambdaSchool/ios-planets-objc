//
//  ABCSettingsViewController.h
//  PlanetsObjC
//
//  Created by Austin Cole on 2/25/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABCPlanetController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABCSettingsViewController : UIViewController

//MARK: IBOutlets
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UILabel *isPlutoAPlanetLabel;
@property (weak, nonatomic) IBOutlet UISwitch *isPlutoAPlanetSwitch;

//MARK: Other Properties
@property(nonatomic) ABCPlanetController *planetController;


//MARK: IBActions
- (IBAction)doneButtonWasTapped:(id)sender;
- (IBAction)isPlutoAPlanetToggle:(id)sender;

//MARK: Messages
- (void)updateViews;


@end

NS_ASSUME_NONNULL_END
