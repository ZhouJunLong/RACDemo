//
//  UIButton+WTKBtn.m
//  WTKWineMVVM
//
//  Created by 王同科 on 16/9/12.
//  Copyright © 2016年 王同科. All rights reserved.
//

#import "UIButton+WTKBtn.h"


@implementation UIButton (WTKBtn)


+(UIButton*)newButton:(void(^)(UIButton *))newButton{
    UIButton *btn           = [UIButton buttonWithType:UIButtonTypeCustom];
    newButton(btn);
    return btn;
}

- (UIButton*((^)(CGRect)))buttonFrame{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (UIButton*((^)(NSString*)))buttonTitle{
    return ^(NSString* title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton*((^)(UIColor*)))buttonBackGroungColor{
    return ^(UIColor* backGroungColor){
        self.backgroundColor = backGroungColor;
        return self;
    };
}
- (UIButton*((^)(UIColor*)))buttonTitleColor{
    return ^(UIColor* titleColor){
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton*((^)(UIFont*)))buttonTitleFont{
    return ^(UIFont* titleFont){
        self.titleLabel.font   = titleFont;
        return self;
    };
}
-(UIButton *(^)(UIView*))labelSuperview{
    
    return ^(UIView*view){
        [view addSubview:self];
        return self;
    };
}


@end
