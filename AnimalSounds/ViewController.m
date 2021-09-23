//
//  ViewController.m
//  AnimalSounds
//
//  Created by Mustafa Kılınç on 23.09.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *soundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL1, &catID);
    
}


- (IBAction)sheep:(id)sender {
}

- (IBAction)pig:(id)sender {
}

- (IBAction)horse:(id)sender {
}

- (IBAction)frog:(id)sender {
}

- (IBAction)dog:(id)sender {
}

- (IBAction)cat:(id)sender {
    
    AudioServicesPlaySystemSound(catID);
    
}
@end
