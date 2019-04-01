//
//  JCSPlanetsCollectionViewController.m
//  PlanetsObjc
//
//  Created by Lambda_School_Loaner_95 on 4/1/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSPlanetsCollectionViewController.h"
#import "JCSPlanetController.h"
#import "JCSPlanet.h"
#import "JCSPlanetsCollectionViewCell.h"

@interface JCSPlanetsCollectionViewController ()

@end

@implementation JCSPlanetsCollectionViewController

//static NSString * const reuseIdentifier = @"Cell";

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self != nil) {
        
        _planetController = [[JCSPlanetController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
  /*  [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];*/
    
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.collectionView reloadData];
}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}

-(NSArray*)planets {
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"];
   // NSArray *result = NSArray
    if (shouldShowPluto) {
        return _planetController.planetsWithPluto;
    } else {
        return _planetController.planetsNoPluto;
    }
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
    return self.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
                                  
    JCSPlanetsCollectionViewCell *imageCell = (JCSPlanetsCollectionViewCell*)cell;
    
    JCSPlanet *planet = [[self planets]objectAtIndex:[indexPath item]];
    
    imageCell.planetImageView.image = planet.image;
    imageCell.planetLabel.text = planet.name;
    
    // Configure the cell
    
    return imageCell;
}



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
