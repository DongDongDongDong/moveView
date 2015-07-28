//
//  BaseViewController.m
//  PengPai
//
//  Created by Chris on 15/3/31.
//  Copyright (c) 2015年 UXIN. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController



- (void)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
/* end */


/* 让这个view只支持横屏 */

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

/* end */

#pragma mark - Notification listener

/**
 *  for override
 */
- (void)appWillResignActive
{
    
}

/**
 *  for override
 */
- (void)appDidBecomeActive
{
    
}

/**
 *  for override
 *
 *  @param status 网路状态
 */
- (void)networkStatusChanged:(NSNotification *)notification
{
    
}


@end
