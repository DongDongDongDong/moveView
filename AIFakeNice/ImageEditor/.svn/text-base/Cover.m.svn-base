//
//  Cover.m
//  NavigationColor
//
//  Created by 魏瑞东 on 15/7/7.
//  Copyright (c) 2015年 Weiruidong. All rights reserved.
//

#import "Cover.h"
@interface Cover()

@property (weak, nonatomic) IBOutlet UIImageView *handTap;
@property (nonatomic,strong) NSTimer *timer;

@end

@implementation Cover


- (void)awakeFromNib{
    [AINoteCenter addObserver:self selector:@selector(removeTimer) name:AITimerNotefication object:nil];
    
    NSTimer *mytimer = [NSTimer scheduledTimerWithTimeInterval:0.6 target:self selector:@selector(moveHand) userInfo:nil repeats:YES];
    self.timer = mytimer;
    [mytimer fire];

}
- (void)removeTimer{
    [self.timer invalidate];
}

- (void)moveHand{
    
    [UIView animateWithDuration:0.3 animations:^{
        self.handTap.transform = CGAffineTransformMakeRotation(-M_PI/4);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 animations:^{
            self.handTap.transform = CGAffineTransformIdentity;
        }];
    }];

    
}

- (void)dealloc{
    [AINoteCenter removeObserver:self];
}

@end
