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

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _planetController = [[OSIPlanetController alloc] init];
    }
    return self;
}



- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _planetController = [[OSIPlanetController alloc] init];
    }
    return self;
}

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    [self.collectionView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _planetController = [[OSIPlanetController alloc] init];
   // [[self collectionView] reloadData];
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [[[self planetController] planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    OSIPlanetsCollectionViewCell *cell = (OSIPlanetsCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSArray *planets = [[self planetController] planets];
    OSIPlanet *planet = [planets objectAtIndex:[indexPath row]];
   
//    [[cell planetName] setText:[planet name]];
//    [[cell imageView] setImage:[UIImage imageNamed:[planet imageName]]];
    return cell;
}


@end
