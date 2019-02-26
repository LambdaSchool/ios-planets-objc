//
//  LMSPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSPlanetsCollectionViewController.h"
#import "LMSSettingsViewController.h"
#import "LMSPlanetsCollectionViewCell.h"
#import "LMSPlanetsController.h"

@interface LMSPlanetsCollectionViewController ()

@property (nonatomic, copy, readonly) LMSPlanetsController *planetController;
@property (nonatomic, copy, readonly) NSArray *planets;

@end

@implementation LMSPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _planetController = [[LMSPlanetsController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    [self.collectionView reloadData];
}

// String Literals in ObjC are @"your string here"
// can also do const char *raw = "Hello, World!";
// char *, or c star, is a pointer

-(NSArray *)planets {
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"];
    
    if (shouldShowPluto) { // if statements in ObjC must have parens
        return _planetController.planetsWithPluto;
    } else {
        return _planetController.planetsWithoutPluto;
    }
}

- (IBAction)unwindFromPlutoSettings:(UIStoryboardSegue *)segue {
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LMSPlanetsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    LMSPlanets *planet = self.planets[indexPath.row];
    
    cell.planet = planet;
    [cell updateViews];
    
    return cell;
}

@end
