//
//  YDViewModel.m
//  YiDing
//
//  Created by 王隆帅 on 16/3/21.
//  Copyright © 2016年 王隆帅. All rights reserved.
//

#import "ZJLViewModel.h"

@implementation ZJLViewModel

@synthesize request  = _request;

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    ZJLViewModel *viewModel = [super allocWithZone:zone];
    
    if (viewModel) {
        //初始化时添加初始化函数方便调用
        [viewModel yd_initialize];
    }
    return viewModel;
}


- (instancetype)initWithModel:(id)model {
    
    self = [super init];
    //用m初始化vm
    if (self) {
    }
    return self;
}
//请求体方法，方便子类发起网络请求
- (CMRequest *)request {
    
    if (!_request) {
        
        _request = [CMRequest request];
    }
    return _request;
}
//做一些数据绑定网络回调方面的处理
- (void)yd_initialize {}


@end
