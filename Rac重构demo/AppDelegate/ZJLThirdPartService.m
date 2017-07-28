//
//  ZJLThirdPartService.m
//  RAC_demo
//
//  Created by junlongZhou on 2017/7/14.
//  Copyright © 2017年 Mr.Zhou. All rights reserved.
//

#import "ZJLThirdPartService.h"

@implementation ZJLThirdPartService
+(void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        [[self class] initCoredata];
    });
}
#pragma mark-- 初始化coreData
+(void)initCoredata{
    
}
#pragma mark-- 键盘回收相关
+ (void)is_setKeyBord{
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    manager.enable = YES;
    manager.shouldResignOnTouchOutside = YES;
    manager.shouldToolbarUsesTextFieldTintColor = YES;
    manager.enableAutoToolbar = YES;
}
#pragma mark － 检测网络相关
+ (void)ls_testReachableStaus {
    
}
@end
