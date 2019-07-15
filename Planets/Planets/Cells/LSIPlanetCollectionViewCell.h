//
//  LSIPlanetCollectionViewCell.h
//  Planets
//
//  Created by Hector Steven on 7/15/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIPlanetCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *planetLabel;

@end

NS_ASSUME_NONNULL_END
