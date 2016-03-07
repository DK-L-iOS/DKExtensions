//
//  DKCommonCtrl.m
//  MyQQDemo
//
//  Created by 李登科 on 16/1/13.
//  Copyright (c) 2016年 李登科. All rights reserved.
//

#import "DKCommonCtrl.h"

@implementation DKCommonCtrl

/** 创建label*/
+ (UILabel *)commonLabelWithFrame:(CGRect)frame text:(NSString *)text font:(CGFloat)font color:(UIColor *)color textAlignment:(NSTextAlignment)alignment
{
    
    UILabel *lab = [[UILabel alloc] initWithFrame:frame];
    lab.text = text;
    lab.font = [UIFont systemFontOfSize:font];
    lab.textColor = color;
    lab.textAlignment = alignment;

    return lab;
}

/** 创建按钮*/
+ (UIButton *)commonButtonWithFrame:(CGRect)frame title:(NSString *)title font:(CGFloat)font color:(UIColor *)color backColor:(UIColor *)backColor
{
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:font];
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn setBackgroundColor:backColor];
    
    return btn;
}

/** 创建图片视图*/
+ (UIImageView *)commonImageViewWithFrame:(CGRect)frame image:(NSString *)image
{
    UIImageView *imageVew = [[UIImageView alloc] initWithFrame:frame];
    imageVew.image = [UIImage imageNamed:image];
    
    return imageVew;
}


@end
