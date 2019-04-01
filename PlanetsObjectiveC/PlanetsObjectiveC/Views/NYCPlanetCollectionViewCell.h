//
//  NYCPlanetCollectionViewCell.h
//  PlanetsObjectiveC
//
//  Created by Nathanael Youngren on 4/1/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetTextLabel;

@end

NS_ASSUME_NONNULL_END
