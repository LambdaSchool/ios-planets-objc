//
//  LSIPlanetsCollectionViewController.m
//  Planets
//
//  Created by Hector Steven on 7/15/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "LSIPlanetsCollectionViewController.h"
#import "LSIPlanetCollectionViewCell.h"
#import "../Model Controller/LSIPlanetController.h"
#import "../Model/LSIPlanets.h"

@interface LSIPlanetsCollectionViewController ()

@end

@implementation LSIPlanetsCollectionViewController

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
		_planetController = [[LSIPlanetController alloc] init];
		_plutoIsPlanet = NO;
	}
	return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    // Do any additional setup after loading the view.
	[self.collectionView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	_plutoIsPlanet = [defaults integerForKey:@"plutoIsPlanet"];
	
	[self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	
	if (_plutoIsPlanet) {
		return self.planetController.planets.count;
	}
	
	return self.planetController.planets.count - 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LSIPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
//	NSString *str = [[NSString alloc] initWithFormat: @"%ld", indexPath.row];
	
	LSIPlanets *planet = [[[self planetController] planets] objectAtIndex:[indexPath row]];
	cell.planetLabel.text = planet.planetName;
	cell.imageView.image = planet.planetImage;
	
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
	NSLog(@"%ld \n", indexPath.row);
	return YES;
}

@end
