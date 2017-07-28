//
//  YDViewModelProtocol.h
//  YiDing
//
//  Created by 王隆帅 on 16/3/21.
//  Copyright © 2016年 王隆帅. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    LSHeaderRefresh_HasMoreData = 1,//下拉还有更多数据
    LSHeaderRefresh_HasNoMoreData,//下拉没有更多数据
    LSFooterRefresh_HasMoreData,//上拉还有更多数据
    LSFooterRefresh_HasNoMoreData,//上拉没有更多数据
    LSRefreshError,//刷新出错
    LSRefreshUI,//仅仅刷新UI布局
} LSRefreshDataStatus;

@protocol ZJLViewModelProtocol <NSObject>

@optional

- (instancetype)initWithModel:(id)model;

@property (strong, nonatomic)CMRequest *request;

/**
 *  初始化
 */
- (void)yd_initialize;

@end
