//
//  LMSPlanetsCollectionViewCell.m
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSPlanetsCollectionViewCell.h"
#import "LMSPlanets.h"

@interface LMSPlanetsCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *planetLabel;

@end

@implementation LMSPlanetsCollectionViewCell

- (void)updateViews {
    if (self.planet) {
        self.imageView.image = self.planet.image;
        self.planetLabel.text = self.planet.name;
    }
}

@end
