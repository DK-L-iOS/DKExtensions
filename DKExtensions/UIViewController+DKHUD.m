//
//  UIViewController+DKHUD.m
//  DKProgressHUD
//
//  Created by DK-Li on 16/1/13.
//  Copyright (c) 2016年 DK-Li. All rights reserved.
//

#import "UIViewController+DKHUD.h"
#import "MBProgressHUD.h"

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
     hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[self pathOfIsSuccess:YES]]];
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
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[self pathOfIsSuccess:NO]]];
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

/**
 *  加载资源路径
 *
 *  @param isSuccess 是否是成功
 *
 *  @return 资源路径
 */
- (NSString *)pathOfIsSuccess:(BOOL)isSuccess
{
    
    NSString *imageName = isSuccess? @"success-white" : @"error-white";
    
    NSString *path = [[[NSBundle mainBundle] pathForResource:@"DKExtensions" ofType:@"bundle"] stringByAppendingPathComponent:[NSString stringWithFormat:@"DKProgressHUD.bundle/%@",imageName]];
    
    if (!path) {
        path = [[[NSBundle mainBundle] pathForResource:@"DKProgressHUD" ofType:@"bundle"] stringByAppendingPathComponent:imageName];
    }
    
    return path;
}

@end










