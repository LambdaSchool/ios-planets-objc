//
//  REPPlanetsCollectionViewController.m
//  Planets ObjC
//
//  Created by Michael Redig on 10/7/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPPlanetsCollectionViewController.h"
#import "REPPlanetController.h"
#import "REPPlanetCollectionViewCell.h"
#import "REPPlanet.h"

@interface REPPlanetsCollectionViewController() {
	REPPlanetController *_planetController;
}

@end

@implementation REPPlanetsCollectionViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	_planetController = [[REPPlanetController alloc] init];
	// Do any additional setup after loading the view.

	UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
	layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
	layout.minimumInteritemSpacing = 75;
	layout.itemSize = CGSizeMake(125, 125);
	layout.sectionInset = UIEdgeInsetsMake(20, 20, 0, 0);
	self.collectionView.collectionViewLayout = layout;
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear: animated];
	[self.collectionView reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return _planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	REPPlanetCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];

	REPPlanet* planet = _planetController.planets[indexPath.item];
	cell.planet = planet;
	return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
	REPPlanet* planet = _planetController.planets[indexPath.item];
	double size = CGRectGetWidth(collectionView.frame) * planet.sizeRelativeToJupiter;
    return CGSizeMake(size, collectionView.frame.size.width);
}

@end
