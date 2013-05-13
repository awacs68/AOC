//
//  AppDelegate.m
//  AOCProject1
//
//  Created by Mark A McAninch on 5/8/13.
//  Copyright (c) 2013 Mark A McAninch. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // About Myself, and my work
    
    // My Name
    NSLog(@"My name is");
    NSLog(@"Mark A McAninch");
    
    
    // My Age
    float myFloat = 44.5f;
    int myInt = (int) myFloat;
    
    NSLog(@"I'm currently %d years old", myInt);
    NSLog(@"In 1 month I will be %.1f", myFloat);
    
    // Where I work
    // Using a if and else statement
    float garageA = 60.5;
    int garageB = 25;
    
    // Bool
    BOOL garages = YES;
    
    
    
    if ((garages == 65) || (garageA > 30)) {
        NSLog(@"I work at After Hours Garage");
    
    } else if ((garageA < 20) && (garageB < 55)) {
        NSLog(@"I don't work at Firestone");
    
    
    } else {
        NSLog(@"I don't work at Dealership"); }
    
    // Time before my next shift at work.
    // Using a for loop
    for (int t=10; t >= 0; t--)
    {
        NSLog(@"Time before I have to go to work in hours: %d hours", t);
        
    }
        NSLog(@"Time for Work :(");
    
    // Time before I get off work and begin my school work
    // Using a while loop
        NSLog(@"Getting ready to clock out");
    int hours = 0;
    while (hours < 9)
    {
        NSLog(@"hours = %d\n Time before I go home", hours);
    
        hours++;
    }
        NSLog(@"Time to go home :)");
    
    // Using a nested loop
    // Employees and Sick Days
    

    for (int numWorkers = 5; numWorkers < 7; numWorkers++) {
        NSLog(@"There are %d employees at the garage.", numWorkers);
        for (int sickDays = 6; sickDays >= 4; sickDays--) {
        NSLog(@"With %d employees at the garage, we each have %d sickdays for the year.", numWorkers, sickDays);
        
        }
     }


    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
