//
//  JSPlanetsCollectionVC.m
//  Planets-C
//
//  Created by Jeffrey Santana on 10/7/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSPlanetsCollectionVC.h"
#import "JSPlanetsController.h"
#import "JSPlanetCell.h"

@interface JSPlanetsCollectionVC ()

@end

@implementation JSPlanetsCollectionVC

static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		_planetController = [[JSPlanetsController alloc] init];
	}
	return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
//    [self.collectionView registerClass:[JSPlanetCell class] forCellWithReuseIdentifier:reuseIdentifier];
	[self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JSPlanetCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
	
	if (cell == nil) {
		NSLog(@"Empty cell");
	}
    
	JSPlanet *planet = self.planetController.planets[indexPath.item];
	[cell configCell:planet];
//	cell.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    return cell;
}

@end
