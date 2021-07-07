//
//  ALWPlanetsCollectionViewController.m
//  

#import "ALWPlanetsCollectionViewController.h"
#import "ALWPlanetController.h"
#import "ALWPlanet.h"
#import "ALWPlanetCollectionViewCell.h"

@interface ALWPlanetsCollectionViewController ()

@end

@implementation ALWPlanetsCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

static NSString * const reuseIdentifier = @"planetCell";

- (NSArray *)currentPlanets {
    BOOL shouldIncludePluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"PlutoStatus"];
    if (shouldIncludePluto == YES) {
        return _planetController.planetsWithPluto;
    } else {
        return _planetController.planetsWithoutPluto;
    }
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self != nil) {
        _planetController = [[ALWPlanetController alloc] init];
        _planetCollectionViewCell = [[ALWPlanetCollectionViewCell alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self != nil) {
        _planetController = [[ALWPlanetController alloc] init];
        _planetCollectionViewCell = [[ALWPlanetCollectionViewCell alloc] init];
    }
    return self;
}



#pragma mark <UICollectionViewDataSource>


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [[self currentPlanets] count];
    //return [[[self planetController] planetsWithPluto] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    // Cast as a CollectionViewCell
    ALWPlanetCollectionViewCell *cell = (ALWPlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // let planets = self.planetController.planetsWithPluto
    NSArray *planets = [[self planetController] planetsWithPluto];
    
    // let planet = planets[indexPath.row]
    ALWPlanet *planet = [ planets objectAtIndex:[indexPath row]];
    
    [[cell planetImageView] setImage:[planet image]];
    [[cell planetNameLabel] setText:[planet planetName]];
    
//    [[_planetCollectionViewCell planetImageView] setImage:[planet image]];
//    [[_planetCollectionViewCell planetNameLabel] setText:[planet planetName]];
    
    return cell;
}


@end
