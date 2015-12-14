//
//  FeedTableViewController.h
//  Single View
//
//  Created by alex miller on 12/14/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedTableViewController : UITableViewController

@property(nonatomic, readonly, retain) UILabel *textLabel;
@property(nonatomic, copy) NSString *text;

@end
