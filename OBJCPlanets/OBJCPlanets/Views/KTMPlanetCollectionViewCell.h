//
//  KTMPlanetCollectionViewCell.h
//  OBJCPlanets
//
//  Created by Kobe McKee on 7/15/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KTMPlanetCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *planetLabel;
@end

NS_ASSUME_NONNULL_END
