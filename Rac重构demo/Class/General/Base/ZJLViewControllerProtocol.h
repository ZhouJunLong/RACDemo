//
//  ZJLViewControllerProtocol.h
//  RAC_demo
//
//  Created by junlongZhou on 2017/7/14.
//  Copyright © 2017年 Mr.Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol YDViewModelProtocol;
@protocol ZJLViewControllerProtocol <NSObject>

@optional
- (instancetype)initWithViewModel:(id <YDViewModelProtocol>)viewModel;

- (void)yd_bindViewModel;
- (void)yd_addSubviews;
- (void)yd_layoutNavigation;
- (void)yd_getNewData;
- (void)recoverKeyboard;

@end

