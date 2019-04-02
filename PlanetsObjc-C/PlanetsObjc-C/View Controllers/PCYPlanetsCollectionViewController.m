//
//  PCYPlanetsCollectionViewController.m
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYPlanetsCollectionViewController.h"
#import "PCYPlanetCollectionViewCell.h"
#import "PCYPlanet.h"
#import "PCYPlanetController.h"

@interface PCYPlanetsCollectionViewController ()

@property PCYPlanetController *planetController;

@end

@implementation PCYPlanetsCollectionViewController

- (instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout {
    self = [super initWithCollectionViewLayout:layout];
    if (self) {
        _planetController = [[PCYPlanetController alloc] init];
    }
    return self;
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _planetController = [[PCYPlanetController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _planetController = [[PCYPlanetController alloc] init];
    }
    return self;
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
    PCYPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    PCYPlanet *planet = [_planetController.planets objectAtIndex:indexPath.row];
    cell.planetName.text = planet.name;
    cell.planetImage.image = [UIImage imageNamed:planet.imageName];

    return cell;
}


@end
