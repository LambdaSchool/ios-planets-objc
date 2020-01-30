//
//  PlanetsCollectionViewController.m
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "PlanetsCollectionViewController.h"
#import "PlanetCollectionViewCell.h"
#import "PlanetController.h"
#import "Planet.h"
#import "SettingsViewController.h"

@interface PlanetsCollectionViewController ()

@end

@implementation PlanetsCollectionViewController

PlanetController *_planetController;

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _planetController = [[PlanetController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (NSArray *)currentPlanets {
    BOOL shouldIncludePluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPlutoKey"];
    if (shouldIncludePluto == YES) {
        return _planetController.planetsIncludingPluto;
    } else {
        return _planetController.planetsWithoutPluto;
    }
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self currentPlanets].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    PlanetCollectionViewCell *cell = (PlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Planet *planet = [[self currentPlanets] objectAtIndex:indexPath.item];
    
    
    cell.imageView.image = planet.image;
    cell.nameLabel.text = planet.name;
    
    return cell;
}

@end
