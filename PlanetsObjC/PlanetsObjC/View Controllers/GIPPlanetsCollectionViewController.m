//
//  GIPPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPPlanetsCollectionViewController.h"
#import "GIPPlanetController.h"
#import "GIPPlanetCollectionViewCell.h"
#import "GIPPlanet.h"

@interface GIPPlanetsCollectionViewController ()

@end

@implementation GIPPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[GIPPlanetController alloc] init];
        _userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

- (NSArray *)planetsToShow {
    if ([self.userDefaults boolForKey:@"IsPlutoPlanet"]) {
        return self.controller.planetsWithPluto;
    } else {
        return self.controller.planetsWithoutPluto;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.collectionView reloadData];
    [self.collectionView layoutIfNeeded];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.collectionView reloadData];
    [self.collectionView layoutIfNeeded];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.planetsToShow.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GIPPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    GIPPlanet *planet = [self.planetsToShow objectAtIndex:indexPath.row];
    
    cell.planetNameLabel.text = planet.name;
    cell.planetImageView.image = planet.image;
    cell.planet = planet;
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
   {
       GIPPlanetCollectionViewCell *cell =  (GIPPlanetCollectionViewCell *) [collectionView cellForItemAtIndexPath:indexPath];
       // cell returns nil
       
       CGFloat height = collectionView.safeAreaLayoutGuide.layoutFrame.size.height;
       CGFloat width = collectionView.safeAreaLayoutGuide.layoutFrame.size.width;

       //return CGSizeMake(height * cell.planet.size, width * cell.planet.size);
       return CGSizeMake(height, width);
   }


#pragma mark <UICollectionViewDelegate>


@end
