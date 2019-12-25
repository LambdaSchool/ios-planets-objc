//
//  ABCPlanetCollectionViewCell.h
//  PlanetsObjC
//
//  Created by Austin Cole on 2/25/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ABCPlanetCollectionViewCell : UICollectionViewCell

//MARK: IBOutlets
@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;

//MARK: IBActions



@end

NS_ASSUME_NONNULL_END
