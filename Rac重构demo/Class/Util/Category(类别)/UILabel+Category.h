//
//  UILabel+Category.h
//  链式编程
//
//  Created by junlongZhou on 2017/7/11.
//  Copyright © 2017年 Mr.Zhou. All rights reserved.
//
//label的扩展，方便创建，控件的封装都可以使用链式编程，
#import <UIKit/UIKit.h>

@interface UILabel (Category)

+ (UILabel *)newUILabel:(void (^)(UILabel *label))newlabel;
- (UILabel *(^)(CGRect))labelFrame;
//返回值(^block名称)(参数)
- (UILabel *(^)(UIView *))labelSuperview;

- (UILabel *(^)(UIFont *))labelFont;

- (UILabel *(^)(UIColor *))labelColor;

- (UILabel *(^)(NSTextAlignment))labelAlignment;

- (UILabel *(^)(NSString *))labelText;

- (UILabel *(^)(UIColor *))labelBackgroundColor;

@end
