//
//  JSPlanetCell.m
//  Planets-C
//
//  Created by Jeffrey Santana on 10/7/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSPlanetCell.h"
#import "JSPlanet.h"

@implementation JSPlanetCell

- (void)configCell:(JSPlanet *)planet {
	self.imageView.image = planet.image;
	self.nameLbl.text = planet.name;
}

@end
