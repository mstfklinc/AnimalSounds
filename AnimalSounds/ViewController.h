//
//  ViewController.h
//  AnimalSounds
//
//  Created by Mustafa Kılınç on 23.09.2021.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController{
    
    SystemSoundID catID;
    SystemSoundID dogID;
    SystemSoundID frogID;
    SystemSoundID horseID;
    SystemSoundID pigID;
    SystemSoundID sheepID;
    
}

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;

- (IBAction)cat:(id)sender;
- (IBAction)dog:(id)sender;
- (IBAction)frog:(id)sender;
- (IBAction)horse:(id)sender;
- (IBAction)pig:(id)sender;
- (IBAction)sheep:(id)sender;


@end

