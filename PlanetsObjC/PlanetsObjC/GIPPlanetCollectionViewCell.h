//
//  GIPPlanetCollectionViewCell.h
//  PlanetsObjC
//
//  Created by Gi Pyo Kim on 12/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GIPPlanetCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;

@end

NS_ASSUME_NONNULL_END
