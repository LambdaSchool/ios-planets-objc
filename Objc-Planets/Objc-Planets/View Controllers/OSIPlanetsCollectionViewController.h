//
//  OSIPlanetsCollectionViewController.h
//  Objc-Planets
//
//  Created by Sergey Osipyan on 2/25/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OSIPlanetController;


NS_ASSUME_NONNULL_BEGIN

@interface OSIPlanetsCollectionViewController : UICollectionViewController

@property OSIPlanetController * planetController;

@end

NS_ASSUME_NONNULL_END
