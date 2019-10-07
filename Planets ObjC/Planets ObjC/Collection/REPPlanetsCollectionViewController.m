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

@interface REPPlanetsCollectionViewController() {
	REPPlanetController *_planetController;
}

@end

@implementation REPPlanetsCollectionViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	_planetController = [[REPPlanetController alloc] init];
	// Do any additional setup after loading the view.
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

@end
