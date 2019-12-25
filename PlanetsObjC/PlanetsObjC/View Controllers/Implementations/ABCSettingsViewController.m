//
//  ABCSettingsViewController.m
//  PlanetsObjC
//
//  Created by Austin Cole on 2/25/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import "ABCSettingsViewController.h"
#import "ABCPlanetController.h"

@interface ABCSettingsViewController ()

@end

@implementation ABCSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//MARK: Messages
- (void) updateViews {
    [_isPlutoAPlanetSwitch isOn] = [_planetController  ]
}

//MARK: IBActions
- (IBAction)doneButtonWasTapped:(id)sender {
}

- (IBAction)isPlutoAPlanetToggle:(id)sender {
    //If the user has toggled that Pluto is a planet, the `plutoIsAPlanet` property of the `planetController` will be set to true, else it will be set to false
    [_isPlutoAPlanetSwitch isOn] == true ?
    [_planetController setPlutoIsAPlanet:true] :
    [_planetController setPlutoIsAPlanet:false]
    [[NSUserDefaults standardUserDefaults] setBool: [_planetController plutoIsAPlanet] forKey: @"isPlutoAPlanet"]

}
@end
