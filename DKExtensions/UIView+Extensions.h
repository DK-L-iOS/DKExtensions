//
//  UIView+Extensions.h
//  UIView
//
//  Created by DK-Li on 16/1/13.
//  Copyright (c) 2016年 DK-Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extensions)
/**
 * 位置
 */
@property(nonatomic, assign) CGFloat x;
@property(nonatomic, assign) CGFloat y;
@property(nonatomic, assign) CGFloat centerX;
@property(nonatomic, assign) CGFloat centerY;
@property(nonatomic, assign) CGPoint origin;
@property(nonatomic, assign, readonly) CGFloat rightX;
@property(nonatomic, assign, readonly) CGFloat bottomY;

/**
 * 尺寸
 */
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, assign) CGSize size;

/**
 * 创建对象
 */
+ (id)allocInitWithFrame:(CGRect)frame;

/**
 * 获取到所在的控制器
 */
- (UIViewController *)viewController;

/**
 * 设置圆角
 */
- (void)setCornerRadius:(CGFloat)radius andBorderColor:(UIColor *)color andBorderWidth:(CGFloat)width;

@end
