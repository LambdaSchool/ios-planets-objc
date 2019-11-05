//
//  cdbPlanetsCollectionViewCell.m
//  Planets-ObjC
//
//  Created by Ciara Beitel on 11/5/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "cdbPlanetsCollectionViewCell.h"

@implementation cdbPlanetsCollectionViewCell

- (void)updateViews {
    if (self.planet != nil) {
        self.planetImageView.image = self.planet.image;
        self.planetNameLabel.text = self.planet.name;
    }
}

@end
