//
//  PLAPlanetsCollectionViewController.m
//  PlanetsObjC
//
//  Created by Bobby Keffury on 1/29/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "PLAPlanetsCollectionViewController.h"

@interface PLAPlanetsCollectionViewController ()

@end

@implementation PLAPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

//MARK: - Properties

//MARK: - Outlets

//MARK: - Views

- (void)viewDidLoad {
    [super viewDidLoad];
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

//MARK:  - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}

//MARK: - <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

@end
