//
//  JLRPlanetsCollectionViewController.m
//  PlanetsProject
//
//  Created by Jesse Ruiz on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRPlanetsCollectionViewController.h"
#import "JLRPlanetController.h"
#import "JLRPlanet.h"
#import "JLRPlanetCollectionViewCell.h"

@interface JLRPlanetsCollectionViewController ()

@end

@implementation JLRPlanetsCollectionViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[JLRPlanetController alloc]init];
    }
    return self;
}

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.controller.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JLRPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    JLRPlanet *planet = [self.controller.planets objectAtIndex:indexPath.item];

    cell.planetLabel.text = planet.name;
    cell.planetImage.image = [UIImage imageNamed:planet.image];
    
    return cell;
}

@end
