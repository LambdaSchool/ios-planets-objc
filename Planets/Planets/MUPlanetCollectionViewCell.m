//
//  MUPlanetCollectionViewCell.m
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import "MUPlanetCollectionViewCell.h"

@implementation MUPlanetCollectionViewCell

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planet = self.planet;
        [self updateViews];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _planet = self.planet;
        [self updateViews];
    }
    return self;
}

- (void)updateViews {
    
    //[self imageView] setImage:[planet image]
}



@end
