//
//  DRMPlanetCollectionViewCell.h
//  Planets-Objc
//
//  Created by Dillon McElhinney on 2/25/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DRMPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetLabel;


@end

NS_ASSUME_NONNULL_END
