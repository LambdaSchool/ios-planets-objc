//
//  cdbPlanetsCollectionViewCell.h
//  Planets-ObjC
//
//  Created by Ciara Beitel on 11/5/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cdbPlanet.h"

@interface cdbPlanetsCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;

- (void)updateViews:(cdbPlanet *)planet;

@end

