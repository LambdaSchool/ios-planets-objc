//
//  MJSPlanetsCollectionViewCell.h
//  Planets
//
//  Created by Michael Stoffer on 10/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJSPlanetsCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

NS_ASSUME_NONNULL_END
