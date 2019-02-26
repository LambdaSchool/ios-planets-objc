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

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

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

//    if ([[self settingsViewController] changeShouldShowPluto isOn]); {
//
//    }
    
    return [[[self planetController] planetsWithPluto] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Cast as a CollectionViewCell
    ALWPlanetCollectionViewCell *cell = (ALWPlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    // let planet = planets[indexPath.item]
    ALWPlanet *planet = [_planetController.planetsWithPluto objectAtIndex:indexPath.row];
    
    // cell.imageView.image = planet.image
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    cell.nameLabel.text = planet.name;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

    
    
@end
