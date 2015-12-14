//
//  FeedViewController.m
//  Single View
//
//  Created by alex miller on 12/13/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import "FeedViewController.h"
#import "FavoritesViewController.h"
#import "ProfileViewController.h"
#import "FeedTableViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // set the controller tab icon
        self.tabBarItem.image = [UIImage imageNamed:@"Stack of Photos-24"];
        // Set the controller title
        self.title = @"Photos";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // set the controller view background color
    self.view.backgroundColor = [UIColor blueColor];

    
    // Favorites Button
    UIButton *favoritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favoritesButton.frame = CGRectMake(60, 100, 200, 44);
    [favoritesButton setTitle:@"View Favorites" forState:UIControlStateNormal];
    [self.view addSubview:favoritesButton];
    [favoritesButton addTarget:self action:@selector(showFavorites) forControlEvents:UIControlEventTouchUpInside];
    
    // Profile Button
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    profileButton.frame = CGRectMake(60, 140, 200, 44);
    [profileButton setTitle:@"View Profile" forState:UIControlStateNormal];
    [self.view addSubview:profileButton];
    [profileButton addTarget:self action:@selector(showProfile) forControlEvents:UIControlEventTouchUpInside];
    
    // Profile Button
    UIButton *feedTableButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    feedTableButton.frame = CGRectMake(60, 180, 200, 44);
    [feedTableButton setTitle:@"Feed Table" forState:UIControlStateNormal];
    [self.view addSubview:feedTableButton];
    [feedTableButton addTarget:self action:@selector(showFeedTable) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)showFavorites {
    FavoritesViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    [self.navigationController pushViewController:favoritesViewController animated:YES];
}

- (void)showProfile {
    ProfileViewController *profileViewController = [[ProfileViewController alloc] init];
    [self.navigationController pushViewController:profileViewController animated:YES];
}

- (void)showFeedTable {
    FeedTableViewController *feedTableVC =  [[FeedTableViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:feedTableVC animated:YES];
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
