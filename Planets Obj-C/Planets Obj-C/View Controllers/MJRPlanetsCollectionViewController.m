//
//  MJRPlanetsCollectionViewController.m
//  Planets Obj-C
//
//  Created by Moses Robinson on 3/25/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "MJRPlanetsCollectionViewController.h"
#import "MJRPlanetCollectionViewCell.h"
#import "MJRPlanetController.h"
#import "MJRPlanet.h"

@interface MJRPlanetsCollectionViewController ()

@end

@implementation MJRPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    [[self collectionView] reloadData];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        _planetController = [[MJRPlanetController alloc] init];
    }
    return self;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [[self planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MJRPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    MJRPlanet *planet = [[self planets] objectAtIndex: [indexPath row]];
    
    [[cell planetLabel] setText: [planet name]];
    [[cell planetImage] setImage: [planet image]];
    
    return cell;
}

- (NSArray *)planets {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    BOOL shouldShowPluto = [userDefaults boolForKey: @"ShouldShowPluto"];
    
    if (shouldShowPluto) {
        return [_planetController planetsPlusPluto];
    }
    return [_planetController planetsMinusPluto];
}

@end
