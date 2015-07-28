//
//  AppDelegate.m
//  AIFakeNice
//
//  Created by andylau on 15/7/28.
//  Copyright (c) 2015年 andylau. All rights reserved.
//

#import "AppDelegate.h"
#define CONSTANT_THEME_COLOR_HDEX   0x18639a

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    /* 修改navigationbar的背景颜色 */
    [UINavigationBar appearance].barTintColor = [self colorWithHex:CONSTANT_THEME_COLOR_HDEX];
    
    /* navigationbar 文字颜色 */
    [UINavigationBar appearance].tintColor = [UIColor whiteColor];
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
- (UIColor *) colorWithHex:(UInt64)hex
{
    // Scan values
    unsigned int r = (hex >> 16) & 0XFF;
    unsigned int g = (hex >> 8) & 0XFF;
    unsigned int b = (hex >> 0) & 0XFF;
    if (r == 0 && g == 0 && b == 0)
    {
        return [UIColor colorWithRed:((float) r / 255.0f)
                               green:((float) g / 255.0f)
                                blue:((float) b / 255.0f)
                               alpha:0.0f];
    }
    else
    {
        return [UIColor colorWithRed:((float) r / 255.0f)
                               green:((float) g / 255.0f)
                                blue:((float) b / 255.0f)
                               alpha:1.0f];
    }
}
@end
