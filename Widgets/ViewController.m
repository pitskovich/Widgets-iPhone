//
//  ViewController.m
//  Widgets
//
//  Created by Peter Itskovich on 2/19/18.
//  Copyright © 2018 Peter Itskovich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UIButton *buttonInc;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (weak, nonatomic) IBOutlet UISwitch *switchthing;
@property (weak, nonatomic) IBOutlet UISlider *sliderthing;
@property (weak, nonatomic) IBOutlet UITextField *boxthing;


@end

@implementation ViewController
@synthesize label1;
@synthesize label2;
@synthesize label3;
@synthesize label4;
@synthesize label5;
@synthesize buttonInc;
@synthesize switchthing;
@synthesize sliderthing;
@synthesize segment;
@synthesize boxthing;

int timesPressed1 = 0;
int timesPressed2 = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1Press:(id)sender {
    timesPressed1++;
    label1.text = [NSString stringWithFormat:@"Pressed %d times", timesPressed1];
}
- (IBAction)button2Press:(id)sender {
    timesPressed2++;
    [buttonInc setTitle:[NSString stringWithFormat:@"%d Presses", timesPressed2] forState:UIControlStateNormal];
    [buttonInc setTitle:[NSString stringWithFormat:@"%d Presses", timesPressed2] forState:UIControlStateSelected];
    [buttonInc setTitle:[NSString stringWithFormat:@"%d Presses", timesPressed2] forState:UIControlStateHighlighted];
}
- (IBAction)segmentChange:(id)sender {
    if (segment.selectedSegmentIndex == 0)
    {
        label2.text = @"First Selected";
    }
    else{
        label2.text = @"Second Selected";
    }
}
- (IBAction)switchChange:(id)sender {
    if (switchthing.isOn)
    {
        label3.text = @"On";
    }
    else{
        label3.text = @"Off";
    }
}
- (IBAction)sliderChange:(id)sender {
    label4.text = [NSString stringWithFormat:@"%d%%", (int)(sliderthing.value * 100)];
}
- (IBAction)textType:(id)sender {
}
- (IBAction)updateText:(id)sender {
    label5.text = boxthing.text;
}


@end
