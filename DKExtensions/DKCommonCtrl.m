//
//  DKCommonCtrl.m
//  UIView
//
//  Created by DK-Li on 16/1/13.
//  Copyright (c) 2016年 DK-Li. All rights reserved.
//

#import "DKCommonCtrl.h"

@implementation DKCommonCtrl

/** 创建label*/
+ (UILabel *)commonLabelWithFrame:(CGRect)frame text:(NSString *)text font:(CGFloat)font titleColor:(UIColor *)color textAlignment:(NSTextAlignment)alignment
{
    
    UILabel *lab = [[UILabel alloc] initWithFrame:frame];
    lab.text = text;
    lab.font = [UIFont systemFontOfSize:font];
    lab.textColor = color;
    lab.textAlignment = alignment;

    return lab;
}

/** 创建按钮*/
+ (UIButton *)commonButtonWithFrame:(CGRect)frame title:(NSString *)title font:(CGFloat)font titleColor:(UIColor *)color imageName:(NSString *)image
{
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:font];
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    
    return btn;
}

/** 创建图片视图*/
+ (UIImageView *)commonImageViewWithFrame:(CGRect)frame imageName:(NSString *)image
{
    UIImageView *imageVew = [[UIImageView alloc] initWithFrame:frame];
    imageVew.image = [UIImage imageNamed:image];
    
    return imageVew;
}


@end
