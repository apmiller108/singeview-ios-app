//
//  ProfileViewController.m
//  Single View
//
//  Created by alex miller on 12/13/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import "ProfileViewController.h"
#import "UIImageView+AFNetworking.h"
#import "AFURLRequestSerialization.h"
#import "AFURLResponseSerialization.h"
#import "AFHTTPSessionManager.h"


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
    
    // Get JSON of random user data
    NSURL *endPoint = [[NSURL alloc] initWithString:@"https://randomuser.me/api/"];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:endPoint.absoluteString parameters:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", [responseObject valueForKeyPath:@"results.user.picture.medium"][0] );
        self.userData = responseObject;
        [self requestSuccessful];
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (void)requestSuccessful {
    
    // Set scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.contentSize = CGSizeMake(320, 680);
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    // Profile Image
    UIImageView *profileImageView = [[UIImageView alloc] init];
    [profileImageView setImageWithURL:[NSURL URLWithString:[self.userData valueForKeyPath:@"results.user.picture.medium"][0]] placeholderImage:[UIImage imageNamed:@"placeholder"]];
    [profileImageView setContentMode:UIViewContentModeScaleAspectFit];
    profileImageView.frame = CGRectMake(12, 80, 100, 114);
    [self.scrollView addSubview:profileImageView];
    
    // Name label
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 180, 280, 40)];
    nameLabel.text = [self.userData valueForKeyPath:@"results.user.name.first"][0];
    [self.scrollView addSubview:nameLabel];
    
    // City label
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 220, 280, 40)];
    cityLabel.text = [self.userData valueForKeyPath:@"results.user.location.city"][0];
    [self.scrollView addSubview:cityLabel];
    
    // User's biography
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12, 290, 300, 180)];
    biography.font = [UIFont fontWithName:@"helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Plaid bespoke direct trade cardigan. Cronut sustainable vegan 90's cornhole ramps, health goth bushwick echo park disrupt direct trade lomo heirloom green juice tofu.";
    [self.scrollView addSubview:biography];
    
    // Member since label
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 460, 280, 40)];
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
