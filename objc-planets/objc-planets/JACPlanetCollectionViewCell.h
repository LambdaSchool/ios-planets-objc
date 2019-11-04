//
//  JACPlanetCollectionViewCell.h
//  objc-planets
//
//  Created by Jordan Christensen on 11/5/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JACPlanet.h"

@interface JACPlanetCollectionViewCell : UICollectionViewCell
-(void)updateViews:(JACPlanet *)planet;

@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetName;

@end
