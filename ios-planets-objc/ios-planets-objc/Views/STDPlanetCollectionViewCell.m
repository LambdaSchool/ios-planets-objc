//
//  STDPlanetCollectionViewCell.m
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDPlanetCollectionViewCell.h"

@implementation STDPlanetCollectionViewCell
    
    - (void) updateViews
    {
        if (self.planet != nil) {
            [_planetLabelText setText:_planet.name];
            [_planetImageView setImage:_planet.image];
        }
    }

@end
