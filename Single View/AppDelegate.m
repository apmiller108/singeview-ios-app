//
//  AppDelegate.m
//  Single View
//
//  Created by alex miller on 12/10/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "FeedViewController.h"
#import "FavoritesViewController.h"
#import "ProfileViewController.h"
#import "FeedTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // The window
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
    // Feedview controller
    FeedViewController *feedViewController = [[FeedViewController alloc] init];
    
    // FeedTableController
    // FeedTableViewController *feedTableVC = [[FeedTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    // Favorites controller
    // FavoritesViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    
    // Profile controller
    // ProfileViewController *profileVC = [[ProfileViewController alloc] init];
    
    // Navigation Controller
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:feedViewController];
    // self.window.rootViewController = navigationController;
    
    // The tab bar controller
    // UITabBarController *tabBarController = [[UITabBarController alloc] init];
    // [tabBarController setViewControllers:@[navigationController, favoritesViewController, feedViewController]];
    
    self.window.rootViewController = navigationController;
    
    [self.window makeKeyAndVisible];

    
    NSLog(@"The screen is %f wide and %f tall", viewRect.size.width, viewRect.size.height);
    
    NSLog(@"Hello World, %@", self);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
