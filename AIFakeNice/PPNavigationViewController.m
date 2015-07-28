//
//  PPNavigationViewController.m
//  PengPai
//
//  Created by Chris on 15/3/28.
//  Copyright (c) 2015年 UXIN. All rights reserved.
//

#import "PPNavigationViewController.h"


@interface PPNavigationViewController ()

@end

@implementation PPNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* invoke the methods belong overried by the top VC in the navigationController */

- (BOOL)shouldAutorotate
{
    return self.topViewController.shouldAutorotate;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return self.topViewController.supportedInterfaceOrientations;
}

//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    
//    //If this vc can be poped , then
//    if (self.navigationController.viewControllers.count > 1)
//    {
//        // Disabling pan gesture for left menu
//        [self disableSlidePanGestureForLeftMenu];
//    }
//    
//}

/* end */

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
