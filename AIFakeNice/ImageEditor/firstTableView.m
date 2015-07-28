//
//  firstTableView.m
//  imageEditorController
//
//  Created by 魏瑞东 on 15/6/29.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "firstTableView.h"
#import "SecondTableView.h"
#import "NormalDefectModel.h"
#define UISCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define UISCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
#define FIRSTCELL @"firstCell"
@interface firstTableView ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableView;

@end

@implementation firstTableView


- (NSArray *)firstArray{
    if (_firstArray == nil) {
        _firstArray = [[NSArray alloc]init];
    }
    return _firstArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tableView = [[UITableView alloc]init];
    [self leftItemImage:@"iv_back.png" target:self action:@selector(backToPreViewController)];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        tableView.frame = CGRectMake(0,0, UISCREEN_HEIGHT, UISCREEN_WIDTH);
    }else {
        tableView.frame = CGRectMake(0,0, UISCREEN_WIDTH, UISCREEN_HEIGHT);
    }
    
    tableView.backgroundColor = [UIColor colorWithRed:235.0/255.0 green:246.0/255.0 blue:254.0/255.0 alpha:1.0];
    tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    self.tableView = tableView;
    [self.view addSubview:tableView];
    SecondTableView *secondVC = [[SecondTableView alloc]init];
    [self addChildViewController:secondVC];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];

    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionTop];
    [self tableView:self.tableView didSelectRowAtIndexPath:indexPath];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)backToPreViewController{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.firstArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FIRSTCELL];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:FIRSTCELL];
    }
    
    NormalDefectModel *modal = self.firstArray[indexPath.row];
    cell.textLabel.text = modal.sectionTitle;
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.highlightedTextColor = [UIColor orangeColor];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SecondTableView *second = [self.childViewControllers lastObject];
    NSMutableArray *arrayM = [NSMutableArray array];
    NormalDefectModel *modal = self.firstArray[indexPath.row];
    for (NormalDefectModel *allModal in self.totalArray) {
        if ([allModal.sectionTitle isEqualToString:modal.sectionTitle]) {
            [arrayM addObject:allModal];
        }
    }
    second.secondArray = arrayM;
    CGRect rectNav = self.navigationController.navigationBar.frame;
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        second.tableView.frame = CGRectMake(0.25 * UISCREEN_HEIGHT, rectNav.size.height, 0.75 * UISCREEN_HEIGHT, UISCREEN_WIDTH);
    }else {
        second.tableView.frame = CGRectMake(0.25 * UISCREEN_WIDTH, rectNav.size.height, 0.75 * UISCREEN_WIDTH, UISCREEN_HEIGHT);
    }
    
    [self.view addSubview:second.tableView];
    
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UIView *backgroundViews = [[UIView alloc]initWithFrame:cell.frame];
    backgroundViews.backgroundColor = [UIColor whiteColor];
    [cell setSelectedBackgroundView:backgroundViews];
}



#pragma mark LeftButton
- (void)leftItemImage:(NSString *)imageName target:(id)target action:(SEL)selector{
    self.navigationItem.leftBarButtonItem=[self _createBarButton:imageName
                                                          target:target
                                                          action:selector];
}

- (UIBarButtonItem *)_createBarButton:(NSString *)image target:(id)target action:(SEL)selector
{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 60, 40);
    [btn setTitle:@"取消" forState:UIControlStateNormal];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    if (image) {
        [btn setImage:[UIImage imageNamed:image ] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:image ] forState:UIControlStateHighlighted];
    }
    //    [btn sizeToFit];
    //    btn.exclusiveTouch = TRUE;
    btn.imageEdgeInsets = UIEdgeInsetsMake(10, 0, 10, 48);
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    UIBarButtonItem *btnItem=[[UIBarButtonItem alloc] initWithCustomView:btn];
    return btnItem;
}



- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeRight;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeRight;
}

@end
