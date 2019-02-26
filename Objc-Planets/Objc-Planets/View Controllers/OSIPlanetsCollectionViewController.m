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

//- (instancetype)initWithCoder:(NSCoder *)coder
//{
//    self = [super initWithCoder:coder];
//    if (self) {
//        _planetController = [[OSIPlanetController alloc] init];
//    }
//    return self;
//}

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
   // [[self collectionView] reloadData];
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return [[[self planetController] planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    OSIPlanetsCollectionViewCell *cell = (OSIPlanetsCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSArray *planets = [[self planetController] planets];
    OSIPlanet *planet = [planets objectAtIndex:[indexPath row]];
    cell.planetName.text = planet.name;
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    return cell;
}


@end
