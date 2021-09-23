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
    
    //For horse
    NSURL *soundURL4 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Horse" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL4, &horseID);
    
    //For pig
    NSURL *soundURL5 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Pig" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL5, &pigID);
    
    //For sheep
    NSURL *soundURL6 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sheep" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL6, &sheepID);
}


- (IBAction)sheep:(id)sender {
    AudioServicesPlaySystemSound(sheepID);
}

- (IBAction)pig:(id)sender {
    
    AudioServicesPlaySystemSound(pigID);
}

- (IBAction)horse:(id)sender {
    AudioServicesPlaySystemSound(horseID);
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
