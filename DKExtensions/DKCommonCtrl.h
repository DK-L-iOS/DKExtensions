//
//  DKCommonCtrl.h
//  UIView
//
//  Created by DK-Li on 16/1/13.
//  Copyright (c) 2016年 DK-Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DKCommonCtrl : NSObject

/** 创建label*/
+ (UILabel *)commonLabelWithFrame:(CGRect)frame text:(NSString *)text font:(CGFloat)font titleColor:(UIColor *)color textAlignment:(NSTextAlignment)alignment;

/** 创建按钮*/
+ (UIButton *)commonButtonWithFrame:(CGRect)frame title:(NSString *)title font:(CGFloat)font titleColor:(UIColor *)color imageName:(NSString *)image;

/** 创建label*/
+ (UIImageView *)commonImageViewWithFrame:(CGRect)frame imageName:(NSString *)image;

@end
