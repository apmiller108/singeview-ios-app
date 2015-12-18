//
//  Profile.h
//  Single View
//
//  Created by alex miller on 12/18/15.
//  Copyright © 2015 alex miller. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

@property (strong, nonatomic) NSDictionary *userData;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *mediumPhoto;

@end
