//
//  ZJLStartApp.m
//  RAC_demo
//
//  Created by junlongZhou on 2017/7/14.
//  Copyright © 2017年 Mr.Zhou. All rights reserved.
//

#import "ZJLStartApp.h"

@implementation ZJLStartApp
//只需要引入头文件就会执行 并且只执行一次
+(void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        [[self class] ls_initPersonData];
    });
}
#pragma mark - 初始化个人数据
+ (void)ls_initPersonData {
    
}
@end
