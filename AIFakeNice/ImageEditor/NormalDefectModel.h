//
//  NormalDefectModel.h
//  CarCheck
//
//  Created by 冯祥 on 15/5/28.
//  Copyright (c) 2015年 com.youxinpai. All rights reserved.
//


#import "JSONModel.h"

@protocol NormalDefectModel @end


//生成报告页的时候要对瑕疵点进行区分，但是服务器那边只需要传一般和严重两种类型，所以定义了两个瑕疵类型
typedef NS_ENUM(NSInteger, LocalDefectLevel) {
    LocalDefectLevelNormal = 0,
    //选中时，显示为重要损伤
    LocalDefectLevelRed,
    //选中2个及2个以上时，需要在评级时提示确认是否是水泡车，确认则显示为水泡车
    LocalDefectLevelBlue,
    //选中时，此报告不能发拍
    LocalDefectLevelGreen
};

typedef NS_ENUM(NSInteger, ServerDefectLevel) {
    ServerDefectLevelSlight = 0,
    ServerDefectLevelNormal,
    ServerDefectLevelSerious,
};

@interface NormalDefectModel : JSONModel
///瑕疵点是否被选中
@property (nonatomic) BOOL isSelect;
///本地瑕疵点类型用以在报告页区分
@property (strong, nonatomic) NSString *localLevel;
///瑕疵点在图片上的位置Ø
@property (strong, nonatomic) NSString<Optional> *point;
///瑕疵点可以重复，用于区分名称相同的瑕疵点
@property (strong, nonatomic) NSString<Optional> *index;

///检测区域id
@property (strong, nonatomic) NSString *detectitemid;
///区域说明（不需要传递）
@property (strong, nonatomic) NSString *flag;
///损伤类型(key)
@property (strong, nonatomic) NSString *detectdefectid;
///瑕疵点的文字描述
@property (strong, nonatomic) NSString *title;
///损伤点位
@property (strong, nonatomic) NSString *detectitemmapid;
///显性类型 1外观 2内饰 3骨架 4漆面隐形损伤 5骨架隐形损伤
@property (strong, nonatomic) NSString *detectareatype;
///损伤程度 0轻微 1一般 2严重
@property (strong, nonatomic) NSString *detectlevel;
///点位顺序(没用，传0)
@property (strong, nonatomic) NSString *detectmark;
///默认为0
@property (strong, nonatomic) NSString *carsourcedetectid;
/// 方向
@property (strong, nonatomic) NSString<Optional> *direction;
///瑕疵点属于的区域
@property (strong, nonatomic) NSString<Optional> *sectionTitle;

@end
