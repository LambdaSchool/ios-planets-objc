//
//  ALWSettingsViewController.h
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALWSettingsViewController : UIViewController

    @property (weak, nonatomic) IBOutlet UISwitch *shouldShowPlutoSwitch;
    
- (IBAction)changeShouldShowPluto:(UISwitch *)sender;
    
    
    
    
@end

NS_ASSUME_NONNULL_END
