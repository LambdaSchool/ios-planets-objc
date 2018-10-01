//
//  PlanetCollectionViewCell.h
//  ios-planets-objc
//
//  Created by Conner on 10/1/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlanetCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *planetImageView;
@property (strong, nonatomic) IBOutlet UILabel *planetLabel;

@end

NS_ASSUME_NONNULL_END
