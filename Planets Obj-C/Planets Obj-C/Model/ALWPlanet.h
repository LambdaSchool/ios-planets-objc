//
//  ALWPlanet.h
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALWPlanet : NSObject
    
// var name: String
// var imageName: String
    
@property NSString *name;
@property NSString *imageName;
@property (nonatomic, readonly, nullable) UIImage *image;


// init(name: String)
- (instancetype)initWithName:(NSString *)name;


@end

NS_ASSUME_NONNULL_END


//struct Planet: Codable {
//
//    var name: String
//    let imageName: String
//
//    var image: UIImage {
//        return UIImage(named: imageName)!
//    }
//
//    init(name: String, imageName: String) {
//        self.name = name
//        self.imageName = imageName
//    }
//
//}
