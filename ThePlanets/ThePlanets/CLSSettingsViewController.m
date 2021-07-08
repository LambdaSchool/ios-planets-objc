//
//  CLSSettingsViewController.m
//  ThePlanets
//
//  Created by Carolyn Lea on 10/1/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "CLSSettingsViewController.h"
#import "CLSPlanetController.h"
#import "CLSPlanet.h"

@interface CLSSettingsViewController ()

@property CLSPlanetController *planetController;
@property CLSPlanet *pluto;

@end

@implementation CLSSettingsViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.plutoSwitch setOn: [[NSUserDefaults standardUserDefaults] boolForKey:@"SetSwitch"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    _planetController = [[CLSPlanetController alloc] init];
//    _pluto = [[CLSPlanet alloc] initWithPlanetName:@"Pluto" planetImageName:@"pluto"];
}

- (IBAction)done:(id)sender
{
//    _shouldAddPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"IsPlutoAPlanet"];
//    if (_shouldAddPluto)
//    {
//        [_planetController.planetsWithoutPluto addObject:_pluto];
//    }
   [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)togglePlutoSwitch:(id)sender
{
   _plutoSwitch = (UISwitch *)sender;
    
    if ([_plutoSwitch isOn])
    {
        NSLog(@"its on!");
        
        NSUserDefaults *switchDefaults = [NSUserDefaults standardUserDefaults];
        [switchDefaults setBool: YES forKey:@"SetSwitch"];
        NSLog(@"switch is on saved to YES");
        
        _shouldAddPluto = YES;
        NSUserDefaults *plutoDefaults = [NSUserDefaults standardUserDefaults];
        [plutoDefaults setBool: YES forKey:@"IsPlutoAPlanet"];
        
    }
    else
    {
        NSLog(@"its off!");
        
        NSUserDefaults *switchDefaults = [NSUserDefaults standardUserDefaults];
        [switchDefaults setBool: NO forKey:@"SetSwitch"];
        NSLog(@"switch is on saved to NO");
        
        _shouldAddPluto = NO;
        
        NSUserDefaults *plutoDefaults = [NSUserDefaults standardUserDefaults];
        [plutoDefaults setBool: NO forKey:@"IsPlutoAPlanet"];
    }
}


@end
