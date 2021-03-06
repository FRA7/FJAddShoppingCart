//
//  AppDelegate.m
//  AddShoppingCart
//
//  Created by FRAJ on 15/9/26.
//  Copyright © 2015年 FRAJ. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIColor *color = [UIColor whiteColor];
    NSDictionary *dic = [NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"shangdaohang" ofType:@"png"];
    //选择一种导航控制器，上导航或者下导航都行
    ViewController *firstvc = [ViewController new];
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:firstvc];
    [navigation.navigationBar setBackgroundImage:[UIImage imageWithContentsOfFile:path] forBarMetrics:UIBarMetricsDefault];
    navigation.navigationBar.shadowImage = [[UIImage alloc] init];
    navigation.navigationBar.titleTextAttributes = dic;
    self.window.rootViewController = navigation;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
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
