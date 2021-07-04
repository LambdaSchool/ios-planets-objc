//
//  JDBPlanetsCollectionViewCell.h
//  Planets Obj-C
//
//  Created by Madison Waters on 2/25/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDBPlanetsCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetLabel;

@end

NS_ASSUME_NONNULL_END
