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
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Create a label
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 400, 44)];
    firstLabel.text = @"It doesn't do much, but it works!";
    // Add the label to the view as a subview
    [self.view addSubview:firstLabel];
    
    // Create the firstButton
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(150, 150, 100, 40);
    firstButton.backgroundColor = [UIColor whiteColor];
    firstButton.layer.cornerRadius = 4;
    firstButton.layer.borderWidth = 1;
    firstButton.layer.borderColor = [UIColor grayColor].CGColor;
    [firstButton setTitle:@"Click This!" forState:UIControlStateNormal];
    // Add the firstButton button to the view as a subview
    [self.view addSubview:firstButton];
    
    // Create the secondButton
    UIButton *secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    secondButton.frame = CGRectMake(140, 300, 120, 40);
    secondButton.backgroundColor = [UIColor whiteColor];
    secondButton.layer.cornerRadius = 4;
    secondButton.layer.borderWidth = 1;
    secondButton.layer.borderColor = [UIColor grayColor].CGColor;
    [secondButton setTitle:@"Click This Too!" forState:UIControlStateNormal];
    // Add the secondButton button to the view as a subview
    [self.view addSubview:secondButton];
    
    // firstButton press
    [firstButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // secondButton press
    [secondButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)buttonPressed:(UIButton *)sender {
    // Console log a message when the button is pressed and radmonly change the screen transparency
    NSLog(@"The button was pressed, sender %@", sender);
    self.view.alpha = ((double)arc4random() / 0x100000000);
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
