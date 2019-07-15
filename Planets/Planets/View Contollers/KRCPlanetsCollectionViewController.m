//
//  KRCPlanetsCollectionViewController.m
//  Planets
//
//  Created by Christopher Aronson on 7/15/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCPlanetsCollectionViewController.h"
#import "KRCPlanetsController.h"
#import "KRCPlanetCollectionViewCell.h"
#import "KRCPlanets.h"
#import "KRCSettingsViewController.h"

@interface KRCPlanetsCollectionViewController ()

@end

@implementation KRCPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        _planetController = [[KRCPlanetsController alloc] init];
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL isPlutoAPlanet = [defaults boolForKey:@"isPlutoAPlanet"];
    
    [[self planetController] isPlutoAPlanet:isPlutoAPlanet];
    
    [[self collectionView] reloadData];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[[self planetController] selectedPlanets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    KRCPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    KRCPlanets *planet = [[[self planetController] selectedPlanets] objectAtIndex:[indexPath row]];
    
    [[cell planetImageView] setImage:[planet planetImage]];
    [[cell planetLabel] setText:[planet planetName]];
    
    return cell;
}

@end
