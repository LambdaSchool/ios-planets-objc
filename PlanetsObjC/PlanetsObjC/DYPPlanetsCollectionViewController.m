//
//  DYPPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Daniela Parra on 11/10/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPPlanetsCollectionViewController.h"
#import "DYPPlanetController.m"
#import "DYPPlanetCollectionViewCell.h"

@interface DYPPlanetsCollectionViewController ()

@end

@implementation DYPPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _planetController = [[DYPPlanetController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _planetController = [[DYPPlanetController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    Boolean shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"];
    
    if (shouldShowPluto)
    {
        return [[_planetController planetsWithPluto] count];
    }
    return [[_planetController planetsWithoutPluto] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DYPPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Boolean shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"];
    
    NSArray *planets = [NSArray alloc];
    
    if (shouldShowPluto) {
        planets = [_planetController planetsWithPluto];
    } else {
        planets = [_planetController planetsWithoutPluto];
    }
    
    DYPPlanet *planet = [planets objectAtIndex:[indexPath row]];
    
    [[cell planetImageView] setImage:[planet image]];
    [[cell nameLabel] setText:[planet name]];
    
    return cell;
}

@end
