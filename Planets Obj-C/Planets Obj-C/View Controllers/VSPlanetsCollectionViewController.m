//
//  VSPlanetsCollectionViewController.m
//  Planets Obj-C
//
//  Created by Vici Shaweddy on 1/29/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VSPlanetsCollectionViewController.h"
#import "VSPlanetCollectionViewCell.h"
#import "VSPlanetController.h"
#import "VSPlanet.h"
#import "VSSettingsViewController.h"
#import "VSSettingsKeys.h"
#import "Notifications.h"


@interface VSPlanetsCollectionViewController ()

@property (nonatomic, copy) NSArray<VSPlanet *> *planets;
@property (nonatomic, strong) VSPlanetController *planetController;

@end

@implementation VSPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.planetController = [[VSPlanetController alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updatePlanets:) name:kplutoPlanetStatusChanged object:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (void)updatePlanets:(NSNotification *)notification {
    [self.collectionView reloadData];
}

- (NSArray *)planets {
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey: kShouldShowPlutoKey];
    
    if (shouldShowPluto == YES) {
        return self.planetController.planetsWithPluto;
    } else {
        return self.planetController.planetsWithoutPluto;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    VSPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    VSPlanet *planet = [[self planets] objectAtIndex:indexPath.item];
    cell.imageView.image = planet.image;
    cell.titleLabel.text = planet.name;
    
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
