//
//  STDPlanetsCollectionViewController.m
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDPlanetsCollectionViewController.h"
#import "STDPlanetController.h"
#import "STDPlanetCollectionViewCell.h"
#import "STDPlanet.h"

@interface STDPlanetsCollectionViewController ()

@end

@implementation STDPlanetsCollectionViewController
    
- (NSArray*) planets {
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"shouldShowPlutoKey"];
    return shouldShowPluto ? _planetController.planetsWithPluto : _planetController.planetsWithoutPluto;
}
    
static NSString * const reuseIdentifier = @"PlanetCell";
    
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _planetController = [[STDPlanetController alloc] init];
    }
    return self;
}
    
- (instancetype)initWithCoder:(NSCoder *)coder
    {
        self = [super initWithCoder:coder];
        if (self) {
            _planetController = [[STDPlanetController alloc] init];
        }
        return self;
    }

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receivePlutoMessage) name:@"hi" object:nil];
}
    
- (void)receivePlutoMessage {
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>
    
    
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.planets count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    STDPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    STDPlanet *planet = [self.planets objectAtIndex:[indexPath row]];
    cell.planet = planet;
    [cell updateViews];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>


@end
