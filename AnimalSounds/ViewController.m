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
    
    
    //For cat
    NSURL *soundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL1, &catID);
    
    
    //For dog
    NSURL *soundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Dog" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL2, &dogID);
    
    //For frog
    NSURL *soundURL3 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Frog" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL3, &frogID);
    
}


- (IBAction)sheep:(id)sender {
}

- (IBAction)pig:(id)sender {
}

- (IBAction)horse:(id)sender {
}

- (IBAction)frog:(id)sender {
    
    AudioServicesPlaySystemSound(frogID);
    
}

- (IBAction)dog:(id)sender {
    
    AudioServicesPlaySystemSound(dogID);
    
}

- (IBAction)cat:(id)sender {
    
    AudioServicesPlaySystemSound(catID);
}
@end
