//
//  CCCPlanetsCollectionViewController.m
//  ObjCPlanets
//
//  Created by Ryan Murphy on 7/15/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import "CCCPlanetsCollectionViewController.h"
#import "CCCPlanetCollectionViewCell.h"
#import "CCCPlanetController.h"
#import "CCCPlanet.h"
#import "CCCSettingsViewController.h"

@interface CCCPlanetsCollectionViewController ()

@end

@implementation CCCPlanetsCollectionViewController

CCCPlanetController *_planetController;

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _planetController = [[CCCPlanetController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (NSArray *)currentPlanets {
    BOOL shouldIncludePluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"PlutoStatus"];
    if (shouldIncludePluto == YES) {
        return _planetController.planetsWithPluto;
    } else {
        return _planetController.planetsWithoutPluto;
    }
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self currentPlanets].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CCCPlanetCollectionViewCell *cell = (CCCPlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    CCCPlanet *planet = [[self currentPlanets] objectAtIndex:indexPath.item];
    
    
    cell.imageView.image = planet.image;
    cell.nameLabel.text = planet.name;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>



@end
