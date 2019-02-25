//
//  DRMPlanetsCollectionViewController.m
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMPlanetsCollectionViewController.h"


@interface DRMPlanetsCollectionViewController ()

@end

@implementation DRMPlanetsCollectionViewController 

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setPlanetController:[[DRMPlanetController alloc] init]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [[self collectionView] reloadData];
}

#pragma mark <UICollectionViewDataSource>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[_planetController planetsWithPluto] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DRMPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    DRMPlanet *planet = [[_planetController planetsWithPluto] objectAtIndex:[indexPath row]];

    [[cell planetLabel] setText:[planet name]];
    [[cell planetImageView] setImage:[planet image]];
    return cell;
}

#pragma mark <UICollectionViewDelegateFlowLayout>
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = self.view.bounds.size.width;
    return CGSizeMake(width, (width + 30));
}

@end
