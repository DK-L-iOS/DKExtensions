//
//  DKCommonCtrl.h
//  MyQQDemo
//
//  Created by 李登科 on 16/1/13.
//  Copyright (c) 2016年 李登科. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DKCommonCtrl : NSObject

/** 创建label*/
+ (UILabel *)commonLabelWithFrame:(CGRect)frame text:(NSString *)text font:(CGFloat)font color:(UIColor *)color textAlignment:(NSTextAlignment)alignment;

/** 创建按钮*/
+ (UIButton *)commonButtonWithFrame:(CGRect)frame title:(NSString *)title font:(CGFloat)font color:(UIColor *)color backColor:(UIColor *)backColor;

/** 创建label*/
+ (UIImageView *)commonImageViewWithFrame:(CGRect)frame image:(NSString *)image;

@end
