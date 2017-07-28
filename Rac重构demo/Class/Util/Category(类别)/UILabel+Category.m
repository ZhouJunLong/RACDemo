//
//  UILabel+Category.m
//  链式编程
//
//  Created by junlongZhou on 2017/7/11.
//  Copyright © 2017年 Mr.Zhou. All rights reserved.
//

#import "UILabel+Category.h"

@implementation UILabel (Category)
//返回值(^block名称)(参数)
+ (UILabel *)newUILabel:(void (^)(UILabel *label))newlabel
{
    UILabel *label = [[UILabel alloc] init];
    newlabel(label);
    return label;
}


-(UILabel *((^)(CGRect)))labelFrame{

    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UILabel *(^)(UIView*))labelSuperview{
    
    return ^(UIView*view){
        [view addSubview:self];
        return self;
    };
}

-(UILabel*(^)(UIFont*))labelFont{
    return ^(UIFont*font){
        self.font = font;
        return self;
    };
}

-(UILabel *(^)(UIColor*))labelColor{
    return ^(UIColor*textColor){
        self.textColor = textColor;
        return self;
    };
}

-(UILabel *(^)(NSTextAlignment))labelAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
}

- (UILabel *(^)(NSString *))labelText
{
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIColor *))labelBackgroundColor
{
    return ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}
@end
