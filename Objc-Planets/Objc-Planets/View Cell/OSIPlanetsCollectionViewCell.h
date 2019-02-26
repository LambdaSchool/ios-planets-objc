//
//  OSIPlanetsCollectionViewCell.h
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OSIPlanetsCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *planetName;



@end

NS_ASSUME_NONNULL_END
