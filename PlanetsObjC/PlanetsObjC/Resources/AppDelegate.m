//
//  AppDelegate.m
//  PlanetsObjC
//
//  Created by Lisa Sampson on 2/25/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSDictionary *defaults = @{ @"PlutoStatus": @NO,
                                @"BestPlanet": @"Earth",
                                @"PlanetsToVisit": @[@"Mars"],
                                @"LightMinutesToEarth": @8,
                                @"IsEarthTheBest": @YES
                                };
    
    NSJSONWritingOptions options = NSJSONWritingSortedKeys | NSJSONWritingPrettyPrinted;
    NSData *data = [NSJSONSerialization dataWithJSONObject:defaults options:options error:nil];
    
    NSString *dataAsText = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"encoded to: %@", dataAsText);
    
    id decoded = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    // id ===== "Any" in swift
    
    [[NSNotificationCenter defaultCenter] addObserverForName:nil object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
    }];
    // Block is closure
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
