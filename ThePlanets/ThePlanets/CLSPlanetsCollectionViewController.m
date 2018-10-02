//
//  CLSPlanetsCollectionViewController.m
//  ThePlanets
//
//  Created by Carolyn Lea on 10/1/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "CLSPlanetsCollectionViewController.h"
#import "CLSPlanetController.h"
#import "CLSPlanet.h"
#import "CLSPlanetCollectionViewCell.h"
#import "CLSSettingsViewController.h"

@interface CLSPlanetsCollectionViewController ()

@property CLSPlanet *planet;
@property NSMutableArray *planets;
@property CLSSettingsViewController *settingsViewController;

@end

@implementation CLSPlanetsCollectionViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        _planetController = [[CLSPlanetController alloc] init];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if(self)
    {
        _planetController = [[CLSPlanetController alloc] init];
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _settingsViewController = [[CLSSettingsViewController alloc] init];
    _settingsViewController.shouldAddPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"IsPlutoAPlanet"];
    CLSPlanet *pluto = [[CLSPlanet alloc] initWithPlanetName:@"Pluto" planetImageName:@"pluto"];
    if (_settingsViewController.shouldAddPluto)
    {
        _planets = _planetController.planetsWithoutPluto;
        
        [_planets addObject: pluto];
        //[self.collectionView reloadData];
    }
    else
    {
        _planets = _planetController.planetsWithoutPluto;
        [_planets removeObject:pluto];
        //[self.collectionView reloadData];
    }
    [self.collectionView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _planetController.planetsWithoutPluto.count;
    //return _planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CLSPlanetCollectionViewCell *cell = (CLSPlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    _planet = [[CLSPlanet alloc] init];
    _planet = [_planetController.planetsWithoutPluto objectAtIndex:indexPath.row];
    //_planet = [_planets objectAtIndex:indexPath.row];
    cell.planetImageView.image = [UIImage imageNamed:_planet.planetImageName];
    cell.planetNameLabel.text = _planet.planetName;
    
    return cell;
}



@end
