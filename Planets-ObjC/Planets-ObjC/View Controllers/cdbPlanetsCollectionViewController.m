//
//  cdbPlanetsCollectionViewController.m
//  Planets-ObjC
//
//  Created by Ciara Beitel on 11/5/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "cdbPlanetsCollectionViewController.h"
#import "cdbPlanetController.h"
#import "cdbPlanet.h"
#import "cdbPlanetsCollectionViewCell.h"

@interface cdbPlanetsCollectionViewController ()

@end

@implementation cdbPlanetsCollectionViewController

//static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _planetController = [[cdbPlanetController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    cdbPlanetsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    cdbPlanet *planet = [self.planetController.planets objectAtIndex:indexPath.row];
    cell.planet = planet;
    [cell updateViews];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
