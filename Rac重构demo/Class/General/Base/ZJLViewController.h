//
//  ZJLViewController.h
//  RAC_demo
//
//  Created by junlongZhou on 2017/7/14.
//  Copyright © 2017年 Mr.Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZJLViewControllerProtocol.h"
@interface ZJLViewController : UIViewController<ZJLViewControllerProtocol>
/**
 *  VIEW是否渗透导航栏
 * (YES_VIEW渗透导航栏下／NO_VIEW不渗透导航栏下)
 */
@property (assign,nonatomic) BOOL isExtendLayout;
@end
