//
//  MJSPlanetsCollectionViewController.m
//  Planets
//
//  Created by Michael Stoffer on 10/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import "MJSPlanetsCollectionViewController.h"
#import "MJSPlanetsCollectionViewCell.h"
#import "MJSPlanetController.h"
#import "MJSPlanet.h"

@interface MJSPlanetsCollectionViewController ()

@property MJSPlanetController *planetController;

@end

@implementation MJSPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _planetController = [[MJSPlanetController alloc] init];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [[_planetController planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MJSPlanetsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    MJSPlanet *planet = [[_planetController planets] objectAtIndex:[indexPath row]];
    [[cell imageView] setImage:[planet image]];
    [[cell nameLabel] setText:[planet name]];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

@end
