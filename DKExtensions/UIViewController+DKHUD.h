//
//  UIViewController+DKHUD.h
//  DKProgressHUD
//
//  Created by 李登科 on 16/2/19.
//  Copyright © 2016年 李登科. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (DKHUD)

/**
 *  显示成功提示框(默认1秒消失)
 *
 *  @param title 需要显示的title
 */
- (void)showSuccess:(NSString *)title;

/**
 *  显示失败提示框(默认1.5秒消失)
 *
 *  @param title 需要显示的title
 */
- (void)showError:(NSString *)title;

/**
 *  显示加载HUD，默认为‘菊花’转动
 *
 *  @param title 需要显示的title
 */
- (void)showHUD:(NSString *)title;

/**
 *  隐藏提示框
 */
- (void)hideHUD;

@end




