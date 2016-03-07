//
//  UIViewController+DKHUD.m
//  DKProgressHUD
//
//  Created by 李登科 on 16/2/19.
//  Copyright © 2016年 李登科. All rights reserved.
//

#import "UIViewController+DKHUD.h"
#import "MBProgressHUD.h"

#define IMAGE_URL(name) [NSString stringWithFormat:@"%@/DKProgressHUD.bundle/%@",[[NSBundle mainBundle] resourcePath],name]

@implementation UIViewController (DKHUD)
/**
 *  显示成功提示框
 *
 *  @param title 需要显示的title
 */
- (void)showSuccess:(NSString *)title
{
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.color = [UIColor grayColor];
    hud.mode = MBProgressHUDModeCustomView;
    
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:IMAGE_URL(@"success-white")]];
    hud.labelText = title;
    [hud hide:YES afterDelay:1.0];
}

/**
 *  显示失败提示框
 *
 *  @param title 需要显示的title
 */
- (void)showError:(NSString *)title
{
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.color = [UIColor grayColor];
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:IMAGE_URL(@"error-white")]];
    hud.labelText = title;
    [hud hide:YES afterDelay:1.5];
}

/**
 *  显示加载HUD，默认为‘菊花’转动
 *
 *  @param title 需要显示的title
 */
- (void)showHUD:(NSString *)title
{
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.color = [UIColor grayColor];
    hud.labelText = title;
}

/**
 *  隐藏提示框
 */
- (void)hideHUD
{
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
}

@end










