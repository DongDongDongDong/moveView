//
//  ViewController.h
//  imageEditorController
//
//  Created by 魏瑞东 on 15/6/29.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ImageEditController : UIViewController



/**
 *   显示的瑕疵点
 */
@property (nonatomic,strong)NSArray *titleArray;

/**
 *   最多添加瑕疵数量
 */
@property (nonatomic,assign)NSInteger Label_Max_Count;

- (instancetype)initWithImage:(NSData *)imageData defects:(NSArray *)defects callback:(void(^)(UIImage *image, NSArray *selectedDefects,UIImage *originImage))callback;

@end

