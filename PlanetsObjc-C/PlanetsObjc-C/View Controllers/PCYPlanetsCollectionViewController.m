//
//  PCYPlanetsCollectionViewController.m
//  PlanetsObjc-C
//
//  Created by Paul Yi on 4/1/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYPlanetsCollectionViewController.h"
#import "PCYPlanetCollectionViewCell.h"
#import "PCYPlanet.h"

@interface PCYPlanetsCollectionViewController () {
    NSArray *planetImages;
}
@end

@implementation PCYPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    planetImages = @[@"Earth", @"Jupiter", @"Mars", @"Mercury", @"Neptune", @"Pluto", @"Saturn", @"Uranus", @"Venus"];
    
    

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

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return planetImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PCYPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    
    
    cell.planetImage.image = [UIImage imageNamed:planetImages[indexPath.row]];
    
    
    
    return cell;
}


@end
