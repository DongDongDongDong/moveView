//
//  NSString+StrExt.h
//  imageEditorController
//
//  Created by 魏瑞东 on 15/6/29.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "NSString+StrExt.h"

@implementation NSString (StrExt)

- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}
@end
