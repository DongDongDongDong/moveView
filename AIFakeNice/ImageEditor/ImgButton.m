//
//  ImgButton.m
//  imageEditorController
//
//  Created by 魏瑞东 on 15/6/30.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "ImgButton.h"
#import "GetDBUniqueID.h"

@implementation ImgButton




- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    CGPoint point = [[touches anyObject] locationInView:self];
    [GetDBUniqueID shareUniqueID].originPoint = point;
    NSLog(@"----->%@",NSStringFromCGPoint(point));
    [super touchesBegan:touches withEvent:event];
    
}


@end
