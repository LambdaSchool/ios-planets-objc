    //
    //  MRFPlanetsCollectionViewController.m
    //  OBJCPlanetsHW
    //
    //  Created by Michael Flowers on 7/15/19.
    //  Copyright © 2019 Michael Flowers. All rights reserved.
    //

#import "MRFPlanetsCollectionViewController.h"
#import "MRFPlanetController.h"
#import "MRFPlanet.h"
#import "MRFPlanetCellCollectionViewCell.h"

@interface MRFPlanetsCollectionViewController ()

@end

@implementation MRFPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";


//initialize planetController
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        _planetController = [[MRFPlanetController alloc] init];
    }
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    return [[[self planetController] planets] count];
    return _planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    //declare your cell's class as the cell
    MRFPlanetCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
        // Configure the cell
    MRFPlanet *planet = [[[ self planetController] planets] objectAtIndex:[indexPath row ]];
    cell.labelInCell.text = [ planet planetName];
    
//    [[cell imageViewInCell] image] = [ UIImage imageNamed:[ planet imageName]];
//    [cell imageViewInCell] = [UIImage imageNamed: [planet imageName]];
    
//    [[cell imageViewInCell] image] = [UIImage imageNamed: [planet.imageName]];
    cell.imageViewInCell.image = [UIImage imageNamed:planet.imageName ];
    
    return cell;
}

- (IBAction)settingsButton:(UIBarButtonItem *)sender {
}
@end
