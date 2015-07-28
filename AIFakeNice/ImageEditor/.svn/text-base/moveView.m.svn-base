
//
//  moveView.m
//  imageMove
//
//  Created by 魏瑞东 on 15/6/2.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "moveView.h"
#import "UIImage+Extension.h"
#define CircleWidth 16
@interface moveView ()<UIGestureRecognizerDelegate>{
    CGPoint startPoint;
}

// 记录箭头向左向右
//@property (nonatomic,assign) NSInteger flag;

// 箭头位置
@property (nonatomic,copy)NSString * arrowPoint;


@end
@implementation moveView



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //允许用户交互
        self.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(transFormChange)];
        
        tap.delegate = self;
        //        [self addGestureRecognizer:longPress];
        [self addGestureRecognizer:tap];
    }
    return self;
}


- (void)transFormChange{
    
    UIImage *arrow1_normal = [UIImage resizableImageWithName:@"arrow1_normal"];
    UIImage *arrow2_normal = [UIImage resizableImageWithName:@"arrow2_normal"];
    UIImage *arrow1_special = [UIImage resizableImageWithName:@"arrow1_special"];
    UIImage *arrow2_special = [UIImage resizableImageWithName:@"arrow2_special"];
    
    if ([self.direction isEqualToString:@"L"]) {
        // 当边缘间距可以翻转时：
        if (self.frame.origin.x > (self.frame.size.width - CircleWidth)) {
            
            self.frame = CGRectMake(self.frame.origin.x - (self.frame.size.width - CircleWidth), self.frame.origin.y, self.frame.size.width, self.frame.size.height);
            self.direction = @"R";
            self.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20);
            if (self.changeColor) {
                [self setBackgroundImage:arrow2_special forState:UIControlStateNormal];
            }else{
                [self setBackgroundImage:arrow2_normal forState:UIControlStateNormal];
            }
        }
        
        // 记录当前瑕疵点位置
        //        self.arrowPoint = [NSString stringWithFormat:@"%@",NSStringFromCGPoint(CGPointMake(self.frame.origin.x + self.frame.size.width,self.frame.origin.y + 0.5*self.frame.size.height))];
    }else{
        // 当边缘间距可以翻转时：
        
        
        if((self.frame.origin.x + (self.frame.size.width - CircleWidth) * 2) < (([UIScreen mainScreen].bounds.size.height - 40) * 3 / 2 )) {
            self.frame = CGRectMake(self.frame.origin.x + (self.frame.size.width - CircleWidth), self.frame.origin.y, self.frame.size.width, self.frame.size.height);
            self.contentEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 0);
            self.direction = @"L";
            if (self.changeColor) {
                [self setBackgroundImage:arrow1_special forState:UIControlStateNormal];
            }else{
                [self setBackgroundImage:arrow1_normal forState:UIControlStateNormal];
            }
        }
        
        // 记录当前瑕疵点位置
        //        self.arrowPoint = [NSString stringWithFormat:@"%@",NSStringFromCGPoint(CGPointMake(self.frame.origin.x,self.frame.origin.y + 0.5*self.frame.size.height))];
    }
    //    NSLog(@"-------%@-------",self.arrowPoint);
}


- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //保存触摸起始点位置
    CGPoint point = [[touches anyObject] locationInView:self];
    startPoint = point;
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
    //    if (self.flag) {
    //        self.arrowPoint = [NSString stringWithFormat:@"%@",NSStringFromCGPoint(CGPointMake(self.frame.origin.x + self.frame.size.width,self.frame.origin.y + 0.5 * self.frame.size.height))];
    //    }else{
    //        self.arrowPoint = [NSString stringWithFormat:@"%@",NSStringFromCGPoint(CGPointMake(self.frame.origin.x,self.frame.origin.y + 0.5 * self.frame.size.height))];
    //    }
    
    for (UIButton *btn in self.superview.subviews) {
        if ([btn isKindOfClass:[moveView class]]) {
            //            NSLog(@"%@",NSStringFromCGPoint(btn.frame.origin));
        }
    }
    
    //    NSLog(@"-------%@-------",NSStringFromCGPoint(point));
    
}




@end
