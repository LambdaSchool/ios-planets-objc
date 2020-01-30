//
//  PlanetCollectionViewCell.h
//  Planets-objc
//
//  Created by John Kouris on 1/29/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end
