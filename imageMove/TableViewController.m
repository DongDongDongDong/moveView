//
//  TableViewController.m
//  imageMove
//
//  Created by 魏瑞东 on 15/6/2.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (nonatomic,strong)NSArray *titleArray;
@end

@implementation TableViewController
- (NSArray *)titleArray{
    if (_titleArray == nil) {
        _titleArray = [[NSArray alloc]init];
    }
    _titleArray = @[@"瑕疵点1",@"瑕疵点2",@"瑕疵点3",@"瑕疵点4",@"瑕疵点5"];
    return _titleArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *Cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    Cell.textLabel.text = self.titleArray[indexPath.row];
    return Cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}


@end
