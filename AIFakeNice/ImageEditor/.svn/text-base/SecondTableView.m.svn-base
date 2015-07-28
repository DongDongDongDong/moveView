//
//  SecondTableView.m
//  imageEditorController
//
//  Created by 魏瑞东 on 15/6/29.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "SecondTableView.h"
#import "moveView.h"
#import "ImageEditController.h"
#import "NormalDefectModel.h"
#import "MJExtension.h"
#define SECONDCELL @"secondCell"

@interface SecondTableView ()
@property (nonatomic,assign) NSInteger flag;
@end

@implementation SecondTableView


- (void)setSecondArray:(NSArray *)secondArray{
    _secondArray = secondArray;
    [self.tableView reloadData];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.secondArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SECONDCELL];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SECONDCELL];
    }
    NormalDefectModel *modal = self.secondArray[indexPath.row];
    cell.textLabel.text = modal.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    NormalDefectModel *modal = self.secondArray[indexPath.row];
    NSDictionary *modalDict = modal.keyValues;
    [[NSNotificationCenter defaultCenter] postNotificationName:AIDefectNotefication object:nil userInfo:modalDict];
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
