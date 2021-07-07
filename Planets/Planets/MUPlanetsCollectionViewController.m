//
//  MUPlanetsCollectionViewController.m
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import "MUPlanetsCollectionViewController.h"
#import "MUPlanetCollectionViewCell.h"
#import "PlanetController.h"
#import "Planet.h"
@interface MUPlanetsCollectionViewController ()

@end

@implementation MUPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _planetController = [[PlanetController alloc ] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _planetController = [[PlanetController alloc ] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[[MUPlanetCollectionViewCell self] class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_planets count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MUPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    //NSArray *planets = [[self planetController ] planets ];
    Planet *planet = [_planets objectAtIndex:[indexPath row]];
//
//    cell.planet = planet;
    [[cell imageView] setImage: [planet image]];
    [[cell planetLabel] setText: [planet name]];
    
    return cell;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    BOOL shouldShouldPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPlutoKey"];
    if (shouldShouldPluto) {
        _planets = [_planetController planetsWithPluto];
    } else {
        _planets = [_planetController planets];
    }
    
    [[self collectionView] reloadData];
}

@end
