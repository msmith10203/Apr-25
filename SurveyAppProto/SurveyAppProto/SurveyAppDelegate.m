//
//  SurveyAppDelegate.m
//  SurveyAppProto
//
//  Created by Mike Smith on 5/4/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "SurveyAppDelegate.h"
#import "SurveyViewController.h"
#import "TableViewController.h"

@implementation SurveyAppDelegate
@synthesize window=_window;
@synthesize names;
@synthesize information;

- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{
	// Override point for customization after application launch
	names = [NSArray arrayWithObjects:
             @"8th Avenue",
             @"6th Avenue",
             @"Union Square",
             @"3rd Avenue",
             @"1st Avenue",
             @"Bedford Avenue",
             nil
             ];
    
	information = [NSDictionary dictionaryWithObjectsAndKeys:
                   @"Transfer for A, C, E.",                 @"8th Avenue",
                   @"Transfer for F, M, 1, 2, 3.",           @"6th Avenue",
                   @"Transfer for N, Q, R, 4, 5, 6.",        @"Union Square",
                   @"No transfers.",                         @"3rd Avenue",
                   @"First Avenue has an uptown bike lane.", @"1st Avenue",
                   @"Only the dead know Brooklyn.",		  @"Bedford Avenue",
                   nil
                   ];
    
/*
	SurveyViewController *firstController =
    [[SurveyViewController alloc] initWithTitle: [names objectAtIndex: 0]];
*/

    TableViewController *firstController =
    [[TableViewController alloc] initWithStyle: UITableViewStyleGrouped initWithTitle:@"Go East"];

	self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
	// Override point for customization after application launch.
    
	self.window.rootViewController =
    [[UINavigationController alloc] initWithRootViewController: firstController];
    
	visited = [NSMutableArray arrayWithObject: firstController];
	[self.window makeKeyAndVisible];
	return YES;
}

- (void) nextStation {
	UINavigationController *navigationController =
    (UINavigationController *)self.window.rootViewController;
    
	NSUInteger i = navigationController.viewControllers.count;
	if (i == names.count) {
		//We are currently visiting the last station, and can go no further.
		return;
	}
    
	if (visited.count <= i) {
		//This station is being visited for the first time.
		[visited addObject:
         [[SurveyViewController alloc] initWithTitle: [names objectAtIndex: i]]
         ];
	}
    
	[navigationController pushViewController: [visited objectAtIndex: i] animated: YES];
}

- (void) applicationWillResignActive: (UIApplication *) application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void) applicationDidEnterBackground: (UIApplication *) application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void) applicationWillEnterForeground: (UIApplication *) application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void) applicationDidBecomeActive: (UIApplication *) application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void) applicationWillTerminate: (UIApplication *) application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end