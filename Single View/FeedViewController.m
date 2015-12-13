//
//  FeedViewController.m
//  Single View
//
//  Created by alex miller on 12/13/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import "FeedViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    // Set the controller title
    self.title = @"Feed Me";
    // set the controller view background color
    feedViewController.view.backgroundColor = [UIColor blueColor];
    // set the controller tab icon
    feedViewController.tabBarItem.image = [UIImage imageNamed:@"feed-in"];
}

@end
