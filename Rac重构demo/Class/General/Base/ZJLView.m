//
//  YDView.m
//  YiDing
//
//  Created by 王隆帅 on 16/3/21.
//  Copyright © 2016年 王隆帅. All rights reserved.
//

#import "ZJLView.h"

@implementation ZJLView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self yd_setupViews];
        [self yd_bindViewModel];
    }
    return self;
}

- (instancetype)initWithViewModel:(id<YDViewModelProtocol>)viewModel {
    
    self = [super init];
    if (self) {
        
        [self yd_setupViews];
        [self yd_bindViewModel];
    }
    return self;
}
//绑定V与VM
- (void)yd_bindViewModel {
}
//添加子View到主View
- (void)yd_setupViews {
}
//设置点击空白键盘回收
- (void)yd_addReturnKeyBoard {
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 1;
    tap.numberOfTouchesRequired = 1;
    [tap.rac_gestureSignal subscribeNext:^(id x) {
        
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate.window endEditing:YES];
    }];
    [self addGestureRecognizer:tap];
}

@end
