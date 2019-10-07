//
//  REPPlanetCollectionViewCell.m
//  Planets ObjC
//
//  Created by Michael Redig on 10/7/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPPlanetCollectionViewCell.h"
#import "REPPlanet.h"

@interface REPPlanetCollectionViewCell() {


}

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIView *labelBackgroundView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation REPPlanetCollectionViewCell

- (void)awakeFromNib {
	[super awakeFromNib];

	self.labelBackgroundView.layer.cornerRadius = 8;
	self.labelBackgroundView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.6];
}

- (void)updateViews {
	if (self.planet) {
		self.imageView.image = self.planet.image;
		self.titleLabel.text = self.planet.title;
	}
}

- (void)setPlanet:(REPPlanet *)planet {
	_planet = planet;
	[self updateViews];
}

@end
