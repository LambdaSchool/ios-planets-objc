//
//  MUPlanetCollectionViewCell.h
//  Planets
//
//  Created by Moin Uddin on 11/11/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Planet;
NS_ASSUME_NONNULL_BEGIN

@interface MUPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property Planet *planet;
@property (weak, nonatomic) IBOutlet UILabel *planetLabel;

-(void) updateViews;
@end

NS_ASSUME_NONNULL_END
