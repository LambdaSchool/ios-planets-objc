//
//  PLAPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Bobby Keffury on 1/29/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "PLAPlanetsCollectionViewController.h"
#import "PLAPlanetController.h"
#import "PLAPlanet.h"

@interface PLAPlanetsCollectionViewController ()

@property (nonatomic, readonly)  PLAPlanetController *planetsController;

@end

@implementation PLAPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

//MARK: - Views

- (void)viewDidLoad {
    [super viewDidLoad];
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

//MARK: - <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.planetsController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    return cell;
}

@end
