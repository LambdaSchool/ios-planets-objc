//
//  JACPlanetsCollectionViewController.m
//  objc-planets
//
//  Created by Jordan Christensen on 11/5/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACPlanetsCollectionViewController.h"
#import "JACPlanetCollectionViewCell.h"

@interface JACPlanetsCollectionViewController ()

@end

@implementation JACPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[JACPlanetController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _controller.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JACPlanetCollectionViewCell *cell = (JACPlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:reuseIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    [cell updateViews:[self.controller.planets objectAtIndex:[indexPath row]]];
    
    return cell;
}

@end
