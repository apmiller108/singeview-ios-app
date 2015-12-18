//
//  ProfileViewController.h
//  Single View
//
//  Created by alex miller on 12/13/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Profile.h"

@interface ProfileViewController : UIViewController

@property (strong, nonatomic) UILabel *notesLabel;
@property (strong, nonatomic) UITextField *notesField;
@property (strong, nonatomic) NSDictionary *userData;
@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) Profile *profile;


@end
