//
//  ProfileViewController.m
//  Single View
//
//  Created by alex miller on 12/13/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIImageView *alexView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"My_Wyncode_Mug_1000px.jpg"]];
    [alexView setContentMode:UIViewContentModeScaleAspectFit];
    alexView.frame = self.view.frame;
    [self.view addSubview:alexView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
