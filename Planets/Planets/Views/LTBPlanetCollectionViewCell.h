//
//  LTBPlanetCollectionViewCell.h
//  Planets
//
//  Created by Linh Bouniol on 10/1/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTBPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;

@end

NS_ASSUME_NONNULL_END
