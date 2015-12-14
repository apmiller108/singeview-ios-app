//
//  FavoritesViewController.m
//  Single View
//
//  Created by alex miller on 12/13/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import "FavoritesViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // set the controller tab icon
        self.tabBarItem.image = [UIImage imageNamed:@"star"];
        // set the controller title
        self.title = @"Favorites";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // set the controller view backgound color
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *futureCity = [UIButton buttonWithType:UIButtonTypeCustom];
    [futureCity setImage:[UIImage imageNamed:@"future_city_scape_2.jpg"] forState:UIControlStateNormal];
    [futureCity setImage:[UIImage imageNamed:@"future_city_scape_2.jpg"] forState:UIControlStateHighlighted];
    [futureCity setFrame:CGRectMake(15, 100, 100, 100)];
    [self.view addSubview:futureCity];
    
    [futureCity addTarget:self action:@selector(showZoomedPicture:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showZoomedPicture:(UIButton *)sender {
    UIViewController *zoomInViewController = [[UIViewController alloc] init];
    zoomInViewController.view.frame = self.view.frame;
    zoomInViewController.title = @"Future City";
    
    UIImageView *zoomPic = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"future_city_scape_2.jpg"]];
    [zoomPic setContentMode:UIViewContentModeScaleAspectFit];
    zoomPic.frame = zoomInViewController.view.frame;
    [zoomInViewController.view addSubview:zoomPic];
    
    [self.navigationController pushViewController:zoomInViewController animated:YES];
    
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
