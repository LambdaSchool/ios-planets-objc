//
//  NYCPlanetsCollectionViewController.m
//  PlanetsObjectiveC
//
//  Created by Nathanael Youngren on 4/1/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCPlanetsCollectionViewController.h"
#import "NYCPlanetController.h"
#import "NYCPlanet.h"
#import "NYCPlanetCollectionViewCell.h"

@interface NYCPlanetsCollectionViewController ()

@end

@implementation NYCPlanetsCollectionViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    _planetController = [defaults boolForKey:@"shouldShowPluto"] ? [[NYCPlanetController alloc] initWithPluto] : [[NYCPlanetController alloc] initWithoutPluto];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[[self planetController] planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NYCPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    NYCPlanet *planet = [[[self planetController] planets] objectAtIndex:[indexPath row]];
    
    [[cell planetImageView] setImage:[planet planetImage]];
    [[cell planetTextLabel] setText:[planet planetName]];

    return cell;
}

#pragma mark <UICollectionViewFlowLayoutDelegate>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    double width = collectionView.frame.size.width / 2;
    
    return CGSizeMake(width, width);
}

@end
