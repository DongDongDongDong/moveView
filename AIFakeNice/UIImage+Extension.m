//
//  UIImage+Extension.h
//  imageEditorController
//
//  Created by 魏瑞东 on 15/6/29.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//


#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)resizableImageWithName:(NSString *)imageName
{
    
    // 加载原有图片
    UIImage *norImage = [UIImage imageNamed:imageName];
    // 获取原有图片的宽高的一半
    CGFloat w = norImage.size.width * 0.5;
    CGFloat h = norImage.size.height * 0.5;
    // 生成可以拉伸指定位置的图片
    UIImage *newImage = [norImage resizableImageWithCapInsets:UIEdgeInsetsMake(h, w, h, w) resizingMode:UIImageResizingModeStretch];
    
    return newImage;
}
@end
