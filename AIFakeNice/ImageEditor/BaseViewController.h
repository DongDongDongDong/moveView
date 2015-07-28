//
//  BaseViewController.h
//  PengPai
//
//  Created by Chris on 15/3/31.
//  Copyright (c) 2015年 UXIN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController <UINavigationControllerDelegate>

- (void)appWillResignActive;
- (void)appDidBecomeActive;
- (void)networkStatusChanged:(NSNotification *)notification;

- (void) keyboardWillShown:(NSNotification *) notif;
- (void) keyboardWillHidden:(NSNotification *) notif;

@end
