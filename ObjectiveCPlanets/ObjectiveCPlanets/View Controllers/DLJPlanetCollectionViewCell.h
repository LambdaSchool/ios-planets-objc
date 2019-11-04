//
//  DLJPlanetCollectionViewCell.h
//  ObjectiveCPlanets
//
//  Created by Diante Lewis-Jolley on 7/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DLJPlanetCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *planetLabel;



@end

NS_ASSUME_NONNULL_END
