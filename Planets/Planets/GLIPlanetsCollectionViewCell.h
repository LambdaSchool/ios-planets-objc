//
//  GLIPlanetsCollectionViewCell.h
//  Planets
//
//  Created by Julian A. Fordyce on 4/1/19.
//  Copyright © 2019 Julian A. Fordyce. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GLIPlanetsCollectionViewCell : UICollectionViewCell

// MARK: Properties
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end

NS_ASSUME_NONNULL_END
