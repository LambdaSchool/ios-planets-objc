//
//  HHPlanetsCollectionViewCell.h
//  Planets
//
//  Created by Hayden Hastings on 7/15/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHPlanetsCollectionViewCell : UICollectionViewCell

// MARK: Properties
@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;

@end

NS_ASSUME_NONNULL_END
