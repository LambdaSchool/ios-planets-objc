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
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
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
    MUPlanetCollectionViewCell *cell = (MUPlanetCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
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

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:   (UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    return CGSizeMake(40 * [indexPath item], 40 *  [indexPath item]);
//}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
