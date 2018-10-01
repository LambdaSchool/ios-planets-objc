//
//  STDPlanetsCollectionViewCell.h
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface STDPlanetsCollectionViewCell : UICollectionViewCell

@property NSString *planet;
@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetLabelText;
- (void)updateViews;
    
@end

NS_ASSUME_NONNULL_END
