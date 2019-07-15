//
//  HHPlanetsCollectionViewController.m
//  Planets
//
//  Created by Hayden Hastings on 7/15/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHPlanetsCollectionViewController.h"
#import "HHPlanetsController.h"
#import "HHPlanets.h"
#import "HHPlanetsCollectionViewCell.h"

@interface HHPlanetsCollectionViewController ()

@property HHPlanetsController *planetsController;

@end

@implementation HHPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"planetsCell";

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _planetsController = [[HHPlanetsController alloc] init];
    }
    return self;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _planetsController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HHPlanetsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    HHPlanets *planet = [_planetsController.planets objectAtIndex:indexPath.row];
    cell.planetNameLabel.text = planet.name;
    cell.planetImageView.image = [UIImage imageNamed:planet.image];
    
    return cell;
}

@end
