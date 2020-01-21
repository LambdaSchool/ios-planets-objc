//
//  PlanetCollectionViewCell.h
//  Planets-objc
//
//  Created by Lambda_School_Loaner_204 on 1/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class LSIPlanet;

@interface LSIPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *planetLabel;
@property (nonatomic) LSIPlanet *planet;

- (void)setPlanet:(LSIPlanet *)planet;

@end

NS_ASSUME_NONNULL_END
