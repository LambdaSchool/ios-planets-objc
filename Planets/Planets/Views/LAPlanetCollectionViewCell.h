//
//  LAPlanetCollectionViewCell.h
//  Planets
//
//  Created by Angel Buenrostro on 4/1/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LAPlanetCollectionViewCell : UICollectionViewCell


@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

NS_ASSUME_NONNULL_END
