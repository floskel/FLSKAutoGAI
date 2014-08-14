//
//  FLSKAppDelegate.m
//  AutoGAI
//
//  Created by Karlo Kristensen on 14/08/14.
//  Copyright (c) 2014 floskel. All rights reserved.
//

#import "FLSKAppDelegate.h"
#import <GAI.h>

@implementation FLSKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSString *gaiID = @"YOUR-GOOGLE-ANALYTICS-APP-ID";
    
    [GAI sharedInstance].dispatchInterval = 10;
    [[GAI sharedInstance] trackerWithTrackingId:gaiID];

    return YES;
}

@end
