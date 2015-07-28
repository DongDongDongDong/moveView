//
//  ViewController.m
//  AIFakeNice
//
//  Created by andylau on 15/7/28.
//  Copyright (c) 2015年 andylau. All rights reserved.
//


#import "ViewController.h"
#import "ImageEditController.h"
#import "NormalDefectModel.h"
@interface ViewController ()
@property (nonatomic,strong)NSMutableArray *defects;
@end

@implementation ViewController

- (NSMutableArray *)defects{
    if (_defects == nil) {
        _defects = [NSMutableArray array];
        NormalDefectModel *modal1 = [[NormalDefectModel alloc]init];
        modal1.title = @"第一个";
        modal1.sectionTitle = @"1组";
        modal1.detectlevel = @"0";
        [_defects addObject:modal1];

        NormalDefectModel *modal2 = [[NormalDefectModel alloc]init];
        modal2.title = @"这是第二个";
        modal2.sectionTitle = @"1组";
        modal2.detectlevel = @"1";
        [_defects addObject:modal2];

        NormalDefectModel *modal3 = [[NormalDefectModel alloc]init];
        modal3.title = @"我就排到第三啦";
        modal3.sectionTitle = @"2组";
        modal3.detectlevel = @"2";
        [_defects addObject:modal3];

        NormalDefectModel *modal4 = [[NormalDefectModel alloc]init];
        modal4.title = @"第四个就是我，比他们长";
        modal4.sectionTitle = @"2组";
        modal4.detectlevel = @"1";
        [_defects addObject:modal4];

        NormalDefectModel *modal5 = [[NormalDefectModel alloc]init];
        modal5.title = @"第五个出来了，我才是最长的";
        modal5.sectionTitle = @"3组";
        modal5.detectlevel = @"2";
        [_defects addObject:modal5];
    }
    return _defects;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)didClickButton:(id)sender {
    UIImage *oriImage = [UIImage imageNamed:@"CarOne.png"];
    NSData *desImageData = UIImageJPEGRepresentation(oriImage, 1);
    ImageEditController *imageController = [[ImageEditController alloc] initWithImage:desImageData defects:self.defects callback:^(UIImage *image, NSArray *selectedDefects,UIImage *originImage) {
        //                    [self.navigationController popViewControllerAnimated:NO];
        [self dismissViewControllerAnimated:NO completion:nil];
    }];
    [self.navigationController pushViewController:imageController animated:YES];

}
@end
