//
//  GIPPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPPlanetsCollectionViewController.h"
#import "GIPPlanetController.h"
#import "GIPPlanetCollectionViewCell.h"
#import "GIPPlanet.h"

@interface GIPPlanetsCollectionViewController ()

@end

@implementation GIPPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[GIPPlanetController alloc] init];
        _userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

- (NSArray *)planetsToShow {
    if ([self.userDefaults boolForKey:@"IsPlutoPlanet"]) {
        return self.controller.planetsWithPluto;
    } else {
        return self.controller.planetsWithoutPluto;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.planetsToShow.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GIPPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    GIPPlanet *planet = [self.planetsToShow objectAtIndex:indexPath.item];
    
    cell.planetNameLabel.text = planet.name;
    cell.planetImageView.image = planet.image;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>


@end
