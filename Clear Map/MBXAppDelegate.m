//
//  MBXAppDelegate.m
//  Clear Map
//
//  Created by Justin R. Miller on 8/26/13.
//  Copyright (c) 2013 MapBox. All rights reserved.
//

#import "MBXAppDelegate.h"

#import "MBXViewController.h"

@implementation MBXAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[MBXViewController alloc] initWithNibName:nil bundle:nil];
    self.window.backgroundColor = [UIColor clearColor];
    self.window.opaque = NO;
    [self.window makeKeyAndVisible];

    return YES;
}
							
@end
