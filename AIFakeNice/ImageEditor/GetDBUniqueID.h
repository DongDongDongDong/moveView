//
//  GetDBUniqueID.h
//  CheckAuto3-0
//
//  Created by 魏瑞东 on 15/6/2.
//  Copyright (c) 2015年 youxinpai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GetDBUniqueID : NSObject
/**
 *  获取当前车辆在DB中的唯一ID，用于插入，更新，检索该车辆信息
 */
@property (nonatomic,copy) NSString *UniqueID;
/**
 *  获取当前设备唯一标识
 */
@property (nonatomic,copy) NSString *IMEI;
/**
 *  获取当前账号
 */
@property (nonatomic,copy) NSString *Account;
/**
 *  当前城市
 */
@property (nonatomic,strong) NSNumber *city;
/**
 *  当前用户名
 */
@property (nonatomic,copy) NSString *userName;

@property (nonatomic,assign) CGPoint originPoint;


+ (instancetype)shareUniqueID;
+ (NSString *)getCurrentDeviceType;
+ (void)showTips:(NSString *)tips forSecond:(CGFloat)second onView:(UIView *)view;

@end
