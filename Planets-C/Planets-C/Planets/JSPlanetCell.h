//
//  JSPlanetCell.h
//  Planets-C
//
//  Created by Jeffrey Santana on 10/7/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JSPlanet;

NS_ASSUME_NONNULL_BEGIN

@interface JSPlanetCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLbl;

-(void)configCell:(JSPlanet *)planet;

@end

NS_ASSUME_NONNULL_END
