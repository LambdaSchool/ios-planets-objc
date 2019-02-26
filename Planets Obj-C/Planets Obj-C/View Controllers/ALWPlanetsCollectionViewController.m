//
//  ALWPlanetsCollectionViewController.m
//  

#import "ALWPlanetsCollectionViewController.h"
#import "ALWPlanetCollectionViewCell.h"
#import "ALWPlanetController.h"
#import "ALWPlanet.h"
#import "ALWSettingsViewController.h"

@interface ALWPlanetsCollectionViewController ()

@end

@implementation ALWPlanetsCollectionViewController
    
    // Create an instance variable directly (not a property)
    ALWPlanetController *_planetController;

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _planetController = [[ALWPlanetController alloc] init];
}
    
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}
    
- (NSArray *)currentPlanets {
    BOOL shouldIncludePluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"PlutoStatus"];
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
    
    // Use the reuse identifier
    //ALWPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // OR Cast as a CollectionViewCell
    ALWPlanetCollectionViewCell *cell = (ALWPlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    // let planet = planets[indexPath.item]
    ALWPlanet *planet = [[self currentPlanets] objectAtIndex:indexPath.row];
    
    // cell.imageView.image = planet.image
    cell.imageView.image = planet.image;
    cell.nameLabel.text = planet.name;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

    
    
@end
