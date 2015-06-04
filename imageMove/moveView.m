
//
//  moveView.m
//  imageMove
//
//  Created by 魏瑞东 on 15/6/2.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "moveView.h"

@interface moveView (){
    CGPoint startPoint;
}

@end
@implementation moveView



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //允许用户交互
        self.userInteractionEnabled = YES;
        UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressClick)];
        [self addGestureRecognizer:longPress];
    }
    return self;
}

- (void)longPressClick{
    NSLog(@"--------");
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(self.frame.size.width-10, 0, 10, 10);
    [button setImage:[UIImage imageNamed:@"delete.ico"] forState:UIControlStateNormal];
    [self addSubview:button];
    [button addTarget:self action:@selector(pressToDelete) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressToDelete{
    NSLog(@"++++++++");

    [self removeFromSuperview];
}


- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //保存触摸起始点位置
    CGPoint point = [[touches anyObject] locationInView:self];
    startPoint = point;
    NSLog(@"%@",NSStringFromCGPoint(point));
    //该view置于最前
    [[self superview] bringSubviewToFront:self];
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    //计算位移=当前位置-起始位置
    CGPoint point = [[touches anyObject] locationInView:self];
    float dx = point.x - startPoint.x;
    float dy = point.y - startPoint.y;
    
    //计算移动后的view中心点
    CGPoint newcenter = CGPointMake(self.center.x + dx, self.center.y + dy);
    
    
    /* 限制用户不可将视图托出屏幕 */
    float halfx = CGRectGetMidX(self.bounds);
    //x坐标左边界
    newcenter.x = MAX(halfx, newcenter.x);
    //x坐标右边界
    newcenter.x = MIN(self.superview.bounds.size.width - halfx, newcenter.x);
    
    //y坐标同理
    float halfy = CGRectGetMidY(self.bounds);
    newcenter.y = MAX(halfy, newcenter.y); 
    newcenter.y = MIN(self.superview.bounds.size.height - halfy, newcenter.y); 
    
    //移动view 
    self.center = newcenter;
    NSLog(@"%@",NSStringFromCGPoint(newcenter));

}

@end
