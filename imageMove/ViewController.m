//
//  ViewController.m
//  imageMove
//
//  Created by 魏瑞东 on 15/6/2.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "moveView.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *imageButton;

@property (nonatomic,strong)NSArray *titleArray;
@end

@implementation ViewController
- (NSArray *)titleArray{
    if (_titleArray == nil) {
        _titleArray = [[NSArray alloc]init];
    }
    _titleArray = @[@"瑕疵点1",@"瑕疵点2",@"瑕疵点3",@"瑕疵点4",@"瑕疵点5",@"瑕疵点6",@"瑕疵点7",@"瑕疵点8",@"瑕疵点9"];
    return _titleArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageButton.adjustsImageWhenHighlighted = NO;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}





- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    moveView *view = [[moveView alloc]initWithFrame:CGRectMake(0, 10, 60, 20)];
//    view.backgroundColor = [UIColor redColor];
//    [view setTitle:@"123" forState:UIControlStateNormal];
//    [view setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [self.imageButton addSubview:view];
}
- (IBAction)imageButtonClick:(id)sender {

}


//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//        return @"请选择瑕疵点！";
//
//}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *Cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    Cell.textLabel.text = self.titleArray[indexPath.row];
    return Cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    moveView *view = [[moveView alloc]initWithFrame:CGRectMake(0, 10, 60, 30)];
    view.backgroundColor = [UIColor blueColor];
    [view setTitle:self.titleArray[indexPath.row] forState:UIControlStateNormal];
    view.titleLabel.font = [UIFont systemFontOfSize:10];
    [view setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.imageButton addSubview:view];
}
@end
