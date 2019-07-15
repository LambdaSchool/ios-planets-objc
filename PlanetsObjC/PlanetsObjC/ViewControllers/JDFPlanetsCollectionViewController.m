//
//  JDFPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Jonathan Ferrer on 7/15/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

#import "JDFPlanetsCollectionViewController.h"
#import "JDFPlanetCollectionViewCell.h"
#import "JDFPlanetController.h"
#import "JDFPlanet.h"
#import "JDFSettingsViewController.h"

@interface JDFPlanetsCollectionViewController ()

@end

@implementation JDFPlanetsCollectionViewController

JDFPlanetController *_planetController;

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];

    _planetController = [[JDFPlanetController alloc] init];
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




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [self currentPlanets].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JDFPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    JDFPlanet *planet = [[self currentPlanets] objectAtIndex:indexPath.item];

    cell.imageView.image = planet.image;
    cell.nameLabel.text = planet.name;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>


@end
