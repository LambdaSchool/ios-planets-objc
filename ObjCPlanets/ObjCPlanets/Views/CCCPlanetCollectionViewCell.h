//
//  CCCPlanetCollectionViewCell.h
//  ObjCPlanets
//
//  Created by Ryan Murphy on 7/15/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCCPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end

NS_ASSUME_NONNULL_END
