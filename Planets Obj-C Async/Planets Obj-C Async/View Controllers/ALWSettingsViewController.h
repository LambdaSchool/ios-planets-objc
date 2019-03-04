//
//  ALWSettingsViewController.h
// 

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALWSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)plutoStateChanged:(id)sender;

- (IBAction)done:(id)sender;

@end

NS_ASSUME_NONNULL_END
