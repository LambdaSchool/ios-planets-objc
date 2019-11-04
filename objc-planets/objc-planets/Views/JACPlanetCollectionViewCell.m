//
//  JACPlanetCollectionViewCell.m
//  objc-planets
//
//  Created by Jordan Christensen on 11/5/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACPlanetCollectionViewCell.h"

@implementation JACPlanetCollectionViewCell
- (void)updateViews:(JACPlanet *)planet {
    [_planetName setText:[planet.name capitalizedString]];
    [_planetImageView setImage:[UIImage imageNamed:planet.name]];
}
@end
