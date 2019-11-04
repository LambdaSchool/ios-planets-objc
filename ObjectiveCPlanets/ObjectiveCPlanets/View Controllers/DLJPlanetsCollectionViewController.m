//
//  DLJPlanetsCollectionViewController.m
//  ObjectiveCPlanets
//
//  Created by Diante Lewis-Jolley on 7/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "DLJPlanetsCollectionViewController.h"
#import "DLJPlanetCollectionViewCell.h"
#import "DLJPlanetController.h"
#import "DLJSettingsViewController.h"
#import "DLJPlanet.h"

@interface DLJPlanetsCollectionViewController ()

@end

@implementation DLJPlanetsCollectionViewController

DLJPlanetController *_planetController;

static NSString * const reuseIdentifier = @"PlanetCell";
- (NSArray *)currentPlanets {
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"PlanetPluto"];
    if (shouldShowPluto == YES) {
       return _planetController.plutoPlanets;

    } else {
        return _planetController.planets;

    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _planetController = [[DLJPlanetController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return [self currentPlanets].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DLJPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];

    DLJPlanet *planet = [[self currentPlanets] objectAtIndex:indexPath.row];

    cell.imageView.image = planet.image;
    cell.planetLabel.text = planet.planetName;
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>



@end
