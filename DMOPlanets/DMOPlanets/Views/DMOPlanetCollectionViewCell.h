//
//  PlanetCollectionViewCell.h
//  DMOPlanets
//
//  Created by morse on 1/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMOPlanet.h"


@interface DMOPlanetCollectionViewCell : UICollectionViewCell

// MARK: - Outlets

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

// MARK: - Properties

@property DMOPlanet *planet;

@end

