//
//  STDPlanetsCollectionViewController.m
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDPlanetsCollectionViewController.h"
#import "STDPlanetController.h"
#import "STDPlanetCollectionViewCell.h"
#import "STDPlanet.h"

@interface STDPlanetsCollectionViewController ()

@end

@implementation STDPlanetsCollectionViewController
    
    
static NSString * const reuseIdentifier = @"PlanetCell";
    
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        STDPlanetController *planetController = [[STDPlanetController alloc] init];
        BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"shouldShowPlutoKey"];
        _planets = shouldShowPluto ? planetController.planetsWithPluto : planetController.planetsWithoutPluto;
    }
    return self;
}
    
- (instancetype)initWithCoder:(NSCoder *)coder
    {
        self = [super initWithCoder:coder];
        if (self) {
            STDPlanetController *planetController = [[STDPlanetController alloc] init];
            BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"shouldShowPlutoKey"];
            _planets = shouldShowPluto ? planetController.planetsWithPluto : planetController.planetsWithoutPluto;
        }
        return self;
    }

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self collectionView] reloadData];
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark <UICollectionViewDataSource>
    
    
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_planets count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    STDPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    STDPlanet *planet = [_planets objectAtIndex:[indexPath row]];
    cell.planet = planet;
    [cell updateViews];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
