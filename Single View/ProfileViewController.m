//
//  ProfileViewController.m
//  Single View
//
//  Created by alex miller on 12/13/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import "ProfileViewController.h"
#import "UIImageView+AFNetworking.h"


@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // set the controller tab icon
        self.tabBarItem.image = [UIImage imageNamed:@"User-24"];
        // set the controller title
        self.title = @"Profile";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // background color
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Set scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.contentSize = CGSizeMake(320, 680);
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    // Profile Image
    UIImageView *profileImageView = [[UIImageView alloc] init];
    [profileImageView setImageWithURL:[NSURL URLWithString:@"https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAUCAAAAJGFhYzc5MGU1LTk0NTQtNDYzMy1iOTg4LTZiMzZkMTMzZTI3Mw.jpg"] placeholderImage:[UIImage imageNamed:@"placeholder"]];
    [profileImageView setContentMode:UIViewContentModeScaleAspectFit];
    profileImageView.frame = CGRectMake(12, 20, 100, 114);
    [self.scrollView addSubview:profileImageView];
    
    // Name label
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 140, 280, 40)];
    nameLabel.text = @"Alex Miller";
    [self.scrollView addSubview:nameLabel];
    
    // City label
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 280, 40)];
    cityLabel.text = @"Fort Lauderdale";
    [self.scrollView addSubview:cityLabel];
    
    // User's biography
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12, 260, 300, 180)];
    biography.font = [UIFont fontWithName:@"helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Plaid bespoke direct trade cardigan. Cronut sustainable vegan 90's cornhole ramps, health goth bushwick echo park disrupt direct trade lomo heirloom green juice tofu.";
    [self.scrollView addSubview:biography];
    
    // Member since label
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 440, 280, 40)];
    memberSinceLabel.text = @"Member Since December, 2015";
    [self.scrollView addSubview:memberSinceLabel];
    
    [self.view addSubview:self.scrollView];
    
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
