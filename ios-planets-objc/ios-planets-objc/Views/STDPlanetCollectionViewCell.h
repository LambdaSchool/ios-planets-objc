//
//  STDPlanetCollectionViewCell.h
//  ios-planets-objc
//
//  Created by De MicheliStefano on 01.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STDPlanet.h"

NS_ASSUME_NONNULL_BEGIN

@interface STDPlanetCollectionViewCell : UICollectionViewCell

    @property STDPlanet *planet;
    - (void)updateViews;
    @property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
    @property (weak, nonatomic) IBOutlet UILabel *planetLabelText;
    
@end

NS_ASSUME_NONNULL_END
