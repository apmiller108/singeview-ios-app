//
//  ViewController.m
//  Single View
//
//  Created by alex miller on 12/10/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Set the backgound color of the view
    
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Create a label
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, viewRect.size.width, 44)];
    firstLabel.text = @"It doesn't do much, but it works!";
    firstLabel.textAlignment = NSTextAlignmentCenter;
    // Add the label to the view as a subview
    [self.view addSubview:firstLabel];
    
    // Create the self.fiftyPercentButton
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(160, 150, 100, 40);
    firstButton.backgroundColor = [UIColor whiteColor];
    firstButton.layer.cornerRadius = 4;
    firstButton.layer.borderWidth = 1;
    firstButton.layer.borderColor = [UIColor grayColor].CGColor;
    [firstButton setTitle:@"Dim 50%" forState:UIControlStateNormal];
    // Add the firstButton button to the view as a subview
    [self.view addSubview:firstButton];
    
    // Create the secondButton
    UIButton *secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    secondButton.frame = CGRectMake(160, 250, 100, 40);
    secondButton.backgroundColor = [UIColor whiteColor];
    secondButton.layer.cornerRadius = 4;
    secondButton.layer.borderWidth = 1;
    secondButton.layer.borderColor = [UIColor grayColor].CGColor;
    [secondButton setTitle:@"Dim 25%" forState:UIControlStateNormal];
    // Add the secondButton button to the view as a subview
    [self.view addSubview:secondButton];
    
    self.resetButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.resetButton.frame = CGRectMake(160, 350, 100, 40);
    self.resetButton.backgroundColor = [UIColor whiteColor];
    [self.resetButton setTitle:@"Reset" forState:UIControlStateNormal];
    [self.view addSubview:self.resetButton];
    
    // firstButton press
    [firstButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // secondButton press
    [secondButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)buttonPressed:(UIButton *)sender {
    // Console log a message when the button is pressed and radmonly change the screen transparency
    NSLog(@"The button was pressed, sender %@", sender);
    if([sender.titleLabel.text isEqualToString:@"Dim 50%"]) {
        self.view.alpha = .5;
    }else {
        self.view.alpha = .75;
    }
}

- (void)loadView {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"Screen touch detected");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
