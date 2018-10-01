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

@interface CLSPlanetsCollectionViewController ()

@property CLSPlanet *planet;

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

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // ToModalSettings
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _planetController.planetsWithoutPluto.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CLSPlanetCollectionViewCell *cell = (CLSPlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    _planet = [[CLSPlanet alloc] init];
    _planet = [_planetController.planetsWithoutPluto objectAtIndex:indexPath.row];
    cell.planetImageView.image = [UIImage imageNamed:_planet.planetImageName];
    cell.planetNameLabel.text = _planet.planetName;
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

@end
