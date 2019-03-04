//
//  JDBPlanetsCollectionViewController.m
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "JDBPlanetsCollectionViewController.h"
#import "JDBPlanetsCollectionViewCell.h"
#import "JDBSettingsViewController.h"
#import "JDBPlanetController.h"
#import "Planet.h"

@interface JDBPlanetsCollectionViewController ()

@end

@implementation JDBPlanetsCollectionViewController

 // Create an instance variable directly (not a property)
JDBPlanetController *_planetController;

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /////////////////////////////
    
        //NSString *result = [NSString stringWithString:self];
        NSString *result = @"gladiator";
        NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwxz"];
        //bcdfghjklmnpqrstvwxz //aeiou
        
        while(1)
        {
            NSRange range = [result rangeOfCharacterFromSet:characterSet options:NSCaseInsensitiveSearch];
            if(range.location == NSNotFound)
                break;
            
            result = [result stringByReplacingCharactersInRange:range withString:@""];
            NSLog(@"%@", result);
        }
        
    

    
    /////////////////////////////
    _planetController = [[JDBPlanetController alloc] init];
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (NSArray *)currentPlanets {
    BOOL shouldIncludePluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"];
    if (shouldIncludePluto == YES) {
        return _planetController.planetsWithPluto;
    } else {
        return _planetController.planetsWithoutPluto;
    }
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self currentPlanets].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JDBPlanetsCollectionViewCell *cell = /*(JDBPlanetsCollectionViewCell *)*/[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    Planet *planet = [[self currentPlanets] objectAtIndex:indexPath.row];
    
    cell.planetImageView.image = [UIImage imageNamed:planet.imageName];
    cell.planetLabel.text = planet.name;

    return cell;
}

@end
