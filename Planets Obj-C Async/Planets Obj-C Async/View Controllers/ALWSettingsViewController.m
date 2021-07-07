//
//  ALWSettingsViewController.m
// 

#import "ALWSettingsViewController.h"

@interface ALWSettingsViewController ()

@end

@implementation ALWSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    _plutoSwitch.on = [defaults boolForKey:@"PlutoStatus"];
    
}

- (IBAction)plutoStateChanged:(id)sender {
    
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.plutoSwitch.isOn forKey:@"PlutoStatus"];
}

- (IBAction)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
