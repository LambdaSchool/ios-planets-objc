//
//  PlanetCollectionViewCell.m
//  Planets-objc
//
//  Created by Lambda_School_Loaner_204 on 1/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSIPlanetCollectionViewCell.h"
#import "LSIPlanet.h"

@implementation LSIPlanetCollectionViewCell

- (void)setPlanet:(LSIPlanet *)planet
{
    _planet = planet;
    _planetLabel.text = planet.name;
    _imageView.image = [UIImage imageNamed:planet.imageName];
}

@end
