//
//  OSIPlanetsCollectionViewController.m
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "OSIPlanetsCollectionViewController.h"
#import "OSIPlanetsCollectionViewCell.h"
#import "OSIPlanetController.h"
#import "OSIPlanet.h"
#import <UIKit/UIKit.h>

@interface OSIPlanetsCollectionViewController ()

@end

@implementation OSIPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

//-(void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    [self.collectionView reloadData];
//}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self collectionView] reloadData];
   // [self.collectionView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _planetController = [[OSIPlanetController alloc] init];
    
}


- (NSArray *)currentPlanets {
    BOOL shouldIncludPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"PlutoStatus"];
    if (shouldIncludPluto == YES) {
        return _planetController.planetsWithPluto;
        
    } else {
        return _planetController.planetsWithoutPluto;
    }
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [self currentPlanets].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    OSIPlanetsCollectionViewCell *cell = (OSIPlanetsCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
   // NSArray *planets = [[self planetController] planets];
    OSIPlanet *planet = [[self currentPlanets] objectAtIndex:indexPath.row];
    cell.planetName.text = planet.name;
    cell.imageView.image = [UIImage imageNamed:[planet imageName]];
//    [[cell planetName] setText:[planet name]];
//    [[cell imageView] setImage:[UIImage imageNamed:[planet imageName]]];
    return cell;
}


@end
