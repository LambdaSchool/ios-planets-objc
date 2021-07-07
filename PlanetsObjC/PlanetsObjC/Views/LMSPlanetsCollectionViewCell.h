//
//  LMSPlanetsCollectionViewCell.h
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LMSPlanets;

NS_ASSUME_NONNULL_BEGIN

@interface LMSPlanetsCollectionViewCell : UICollectionViewCell

- (void)updateViews;

@property (nonatomic) LMSPlanets *planet;

@end

NS_ASSUME_NONNULL_END
