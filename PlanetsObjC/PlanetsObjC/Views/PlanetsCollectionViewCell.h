//
//  PlanetsCollectionViewCell.h
//  PlanetsObjC
//
//  Created by Bobby Keffury on 2/4/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlanetsCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;


@end

NS_ASSUME_NONNULL_END
