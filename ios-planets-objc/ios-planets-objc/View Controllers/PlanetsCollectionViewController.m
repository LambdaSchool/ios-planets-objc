//
//  PlanetsCollectionViewController.m
//  ios-planets-objc
//
//  Created by Conner on 10/1/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "PlanetsCollectionViewController.h"
#import "PlanetCollectionViewCell.h"
#import "CGAPlanet.h"
#import "CGAPlanetController.h"

@interface PlanetsCollectionViewController ()

@end

@implementation PlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.collectionView registerClass:[PlanetCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

- (IBAction)unwindToPlanetsCollectionViewController:(UIStoryboardSegue *)segue { }

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _planetController = [[CGAPlanetController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _planetController = [[CGAPlanetController alloc] init];
    }
    return self;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[[self planetController] planetsWithoutPluto] count];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSArray *planets = [[self planetController] planetsWithoutPluto];
    
    [[cell planetLabel] setText:[[planets objectAtIndex:[indexPath row]] name]];
    [[cell planetImageView] setImage:[[planets objectAtIndex:[indexPath row]] planetImage]];
    
    return cell;
}
@end
