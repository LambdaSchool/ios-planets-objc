//
//  JDFPlanetCollectionViewCell.h
//  PlanetsObjC
//
//  Created by Jonathan Ferrer on 7/15/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDFPlanetCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

NS_ASSUME_NONNULL_END
