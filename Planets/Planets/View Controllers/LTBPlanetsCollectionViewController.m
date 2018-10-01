//
//  LTBPlanetsCollectionViewController.m
//  Planets
//
//  Created by Linh Bouniol on 10/1/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBPlanetsCollectionViewController.h"
#import "LTBPlanetController.h"
#import "LTBPlanet.h"
#import "LTBPlanetCollectionViewCell.h"

// all private things go in there, otherwise, they go in the .h
@interface LTBPlanetsCollectionViewController ()

@property LTBPlanetController *planetController;
// If planetController doesn't need to be used anyway else, then make it private by putting it into here.
// And, create an instance of it in viewDidLoad (viewDidLoad gets call when a screen (VC) comes on)
    // don't need to create initWithNibName and initWithCoder

// If planetController does need to be used/accessed by different VCs, then you need the init functions (each type of view controller will have their own designated initializers)
    // the initializers need to be called in the view controller that has a property (instance)
    // CollectionVC has an instance of the modelController (let planetController = PlanetController()), then the initializers go in there
    // DetailVC connecting to the CollectionVC, has a reference to the modelController, then don't need initializers there.

@end

@implementation LTBPlanetsCollectionViewController

- (instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout
{
    self = [super initWithCollectionViewLayout:layout];
    if (self) {
        _planetController = [[LTBPlanetController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _planetController = [[LTBPlanetController alloc] init];
    }
    return self;
}

// this gets called for storyboard
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _planetController = [[LTBPlanetController alloc] init];
    }
    return self;
}


//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//
//    _planetController = [[LTBPlanetController alloc] init];
//}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LTBPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    LTBPlanet *planet = [_planetController.planets objectAtIndex:indexPath.row];
    cell.planetNameLabel.text = planet.name;
    cell.planetImageView.image = [UIImage imageNamed:planet.imageName];
    
    return cell;
}

@end
