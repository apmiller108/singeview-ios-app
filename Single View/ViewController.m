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
    
    // Create the button
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(150, 150, 100, 44);
    firstButton.backgroundColor = [UIColor whiteColor];
    [firstButton setTitle:@"It's a Button!" forState:UIControlStateNormal];
    // Add the button to the view as a subview
    [self.view addSubview:firstButton];
    
    // Create a label
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 100, 200, 44)];
    firstLabel.text = @"It's a Label!";
    // Add the label to the view as a subview
    [self.view addSubview:firstLabel];
    
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
