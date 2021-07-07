//
//  ALWSettingsViewController.m
//  

#import "ALWSettingsViewController.h"

@interface ALWSettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;
    
- (IBAction)dismissSettings:(id)sender;
    
- (IBAction)changeShouldShowPluto:(id)sender;
    
@end

@implementation ALWSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.plutoSwitch.on = [defaults boolForKey:@"PlutoStatus"];
}


- (IBAction)dismissSettings:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
    
- (IBAction)changeShouldShowPluto:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.plutoSwitch.isOn forKey:@"PlutoStatus"];
}
    
@end
