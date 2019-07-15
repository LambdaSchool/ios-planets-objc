//
//  MGBPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBPlanetsCollectionViewController.h"
#import "MGBPlanetController.h"
#import "MGBPlanet.h"
#import "MGBPlanetCollectionViewCell.h"

@interface MGBPlanetsCollectionViewController ()

@property MGBPlanetController *planetController;

@end

@implementation MGBPlanetsCollectionViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _planetController = [[MGBPlanetController alloc] init];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MGBPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    MGBPlanet *planet = [_planetController.planets objectAtIndex:indexPath.row];
    cell.textLabel.text = planet.name;
    cell.imageView.image = [UIImage imageNamed:planet.image];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

@end
