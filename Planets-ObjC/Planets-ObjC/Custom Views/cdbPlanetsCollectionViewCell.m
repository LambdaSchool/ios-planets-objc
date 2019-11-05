//
//  cdbPlanetsCollectionViewCell.m
//  Planets-ObjC
//
//  Created by Ciara Beitel on 11/5/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "cdbPlanetsCollectionViewCell.h"

@implementation cdbPlanetsCollectionViewCell

- (void)updateViews:(cdbPlanet *)planet {
    [_planetImageView setImage:[UIImage imageNamed:planet.name]];
    [_planetNameLabel setText:[planet.name capitalizedString]];
}

@end
