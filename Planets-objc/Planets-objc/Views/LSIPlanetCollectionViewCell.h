//
//  PlanetCollectionViewCell.h
//  Planets-objc
//
//  Created by Lambda_School_Loaner_204 on 1/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *planetLabel;

@end

NS_ASSUME_NONNULL_END
