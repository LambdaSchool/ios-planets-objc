//
//  ALWPlanet.h
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALWPlanet : NSObject

@property NSString * planetName;
@property NSString * imageName;
@property (nonatomic, readonly, nullable) UIImage *image;

- (instancetype)initWithPlanetName:(NSString *)planetName;

@end

NS_ASSUME_NONNULL_END
