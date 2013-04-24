//
//  CPAppDelegate.m
//  ClassStringBugDemo
//
//  Created by Chris Patterson on 4/24/13.
//  Copyright (c) 2013 Chris Patterson. All rights reserved.
//

#import "CPAppDelegate.h"

@implementation CPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	
	// The following line causes clang to "hang" (spin forever) trying to compile this file,
	// when it should cause some kind of "type mismatch" compile error.
	// The correct way to write this line is:
	// if (![NSStringFromClass([application class]) isEqual:@"UIApplication"])
	// or better yet:
	// if ([application class] != [UIApplication class])
	if ([application class] != @"UIApplication")
		NSLog(@"App class is not UIApplication");
	
    return YES;
}

@end
