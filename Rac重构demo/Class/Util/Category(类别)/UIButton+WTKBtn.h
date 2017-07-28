//
//  UIButton+WTKBtn.h
//  WTKWineMVVM
//
//  Created by 王同科 on 16/9/12.
//  Copyright © 2016年 王同科. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface UIButton (WTKBtn)


+(UIButton*)newButton:(void(^)(UIButton *))newButton;

- (UIButton*((^)(CGRect)))buttonFrame;

- (UIButton*((^)(NSString*)))buttonTitle;

- (UIButton*((^)(UIColor*)))buttonBackGroungColor;

- (UIButton*((^)(UIColor*)))buttonTitleColor;

- (UIButton*((^)(UIFont*)))buttonTitleFont;

-(UIButton *(^)(UIView*))labelSuperview;
@end
