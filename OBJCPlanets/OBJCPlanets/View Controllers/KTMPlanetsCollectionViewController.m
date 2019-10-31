//
//  KTMPlanetsCollectionViewController.m
//  OBJCPlanets
//
//  Created by Kobe McKee on 7/15/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "KTMPlanetsCollectionViewController.h"
#import "UIKit/UIKit.h"
#import "KTMPlanetCollectionViewCell.h"
#import "KTMPlanetController.h"
#import "KTMPlanet.h"


@interface KTMPlanetsCollectionViewController ()

@end

@implementation KTMPlanetsCollectionViewController


static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self collectionView] reloadData];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        _planetController = [[KTMPlanetController alloc] init];
    }
    return self;
}
#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self planets].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    KTMPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    KTMPlanet *planet = [[self planets] objectAtIndex:[indexPath row]];
    
    [[cell planetLabel] setText:[planet name]];
    [[cell imageView] setImage:[planet image]];
    
    return cell;
}

- (NSArray *)planets {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    BOOL shouldShowPluto = [userDefaults boolForKey:@"ShouldShowPluto"];
    
    if (shouldShowPluto) {
        NSLog(@" %s", shouldShowPluto ? "true" : "false");
        return [_planetController planetsAndPluto];
    } else {
        return [_planetController planetsNotPluto];
    }
}

@end
