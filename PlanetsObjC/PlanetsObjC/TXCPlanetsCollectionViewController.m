//
//  TXCPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Thomas Cacciatore on 7/15/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCPlanetsCollectionViewController.h"
#import "TXCPlanet.h"
#import "TXCPlanetController.h"
#import "TXCSettingsViewController.h"
#import "TXCPlanetCollectionViewCell.h"

@interface TXCPlanetsCollectionViewController ()

@end

@implementation TXCPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self != nil) {
        _planetController = [[TXCPlanetController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
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
#warning Incomplete implementation, return the number of items
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    BOOL *shouldShowPluto = [defaults boolForKey:@"ShouldShowPlutoKey"];
//    if (shouldShowPluto) {
//        return self.planetController.planetsWithPluto.count;
//    } else {
//        return self.planetController.planets.count;
//    }
    return 0;
}

//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    UICollectionViewCell *cell = (TXCPlanetCollectionViewCell*)cell;
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    BOOL *shouldShowPluto = [defaults boolForKey:@"ShouldShowPlutoKey"];
//    if (shouldShowPluto) {
//        TXCPlanet *planet = self.planetController.planetsWithPluto[indexPath.row];
//    //cell name label = planet name
//    //cell image = planet image
//    } else {
//        TXCPlanet *planet = self.planetController.planets[indexPath.row];
//        //cell name label = planet name
//        //cell image = planet image
//    }
//    return cell;
//}

#pragma mark <UICollectionViewDelegate>


@end
