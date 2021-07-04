//
//  JDBPlanetsCollectionViewController.m
//  Obj-C-Planets
//
//  Created by Madison Waters on 3/4/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "JDBPlanetsCollectionViewController.h"
#import "JDBPlanetsCollectionViewCell.h"
#import "JDBSettingsViewController.h"
#import "JDBPlanetController.h"
#import "JDBPlanet.h"

@interface JDBPlanetsCollectionViewController ()

@end

@implementation JDBPlanetsCollectionViewController

JDBPlanetController *_planetController;

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    _planetController = [[JDBPlanetController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (NSArray *)currentPlanets {
    BOOL shouldIncludePluto = [[NSUserDefaults standardUserDefaults] boolForKey: @"ShouldShowPluto"];
    if (shouldIncludePluto == YES) {
        return _planetController.planetsWithPluto;
    } else {
        return _planetController.planetsWithoutPluto;
    }
}
     
#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[self currentPlanets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JDBPlanetsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    JDBPlanet *planet = [[self currentPlanets] objectAtIndex:indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    cell.nameLabel.text = planet.name;
    
    return cell;
}

@end
