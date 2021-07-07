//
//  DYPPlanetCollectionViewCell.h
//  PlanetsObjC
//
//  Created by Daniela Parra on 11/10/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DYPPlanet;

NS_ASSUME_NONNULL_BEGIN

@interface DYPPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;

@end

NS_ASSUME_NONNULL_END
