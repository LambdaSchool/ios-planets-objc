//
//  MRFPlanetCellCollectionViewCell.h
//  OBJCPlanetsHW
//
//  Created by Michael Flowers on 7/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MRFPlanetCellCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageViewInCell;
@property (weak, nonatomic) IBOutlet UILabel *labelInCell;

@end

NS_ASSUME_NONNULL_END
