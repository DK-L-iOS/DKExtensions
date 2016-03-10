//
//  UIImage+DKExtensions.h
//  UIImage
//
//  Created by DK-Li on 16/1/13.
//  Copyright (c) 2016年 DK-Li. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,DKCropImageStyle){
    
    DKCropImageStyleRight       =0,   //右半部分
    
    DKCropImageStyleCenter       =1,   //中间部分
    
    DKCropImageStyleLeft        =2,   //左半部分
    
    DKCropImageStyleRightOneOfThird  =3,   //右侧三分之一部分
    
    DKCropImageStyleCenterOneOfThird  =4,   //中间三分之一部分
    
    DKCropImageStyleLeftOneOfThird   =5,   //左侧三分之一部分
    
    DKCropImageStyleRightQuarter    =6,   //右侧四分之一部分
    
    DKCropImageStyleCenterRightQuarter =7,   //中间右侧四分之一部分
    
    DKCropImageStyleCenterLeftQuarter =8,   //中间左侧四分之一部分
    
    DKCropImageStyleLeftQuarter    =9,   //左侧四分之一部分
    
};

@interface UIImage (DKExtensions)

/**
 *  保持原来的长宽比，生成一个缩略图
 *
 *  @param image 需要处理的图片
 *  @param asize 新图片的大小
 *
 *  @return 返回新生成的图片
 */
+ (UIImage *)thumbnailWithImageWithoutScale:(UIImage *)image size:(CGSize)asize;

/**
 *  自动缩放到指定大小
 *
 *  @param image 需要处理的图片
 *  @param asize 制定尺寸
 *
 *  @return 返回新生成的图片
 */
+ (UIImage *)thumbnailWithImage:(UIImage *)image size:(CGSize)asize;

/**
 *  切割图片
 *
 *  @param style 切割样式
 *
 *  @return 切割后的图片
 */
- (UIImage *)imageByCroppingWithStyle:(DKCropImageStyle)style;

/**
 *  切割图片
 *
 *  @param rect 切割的范围
 *
 *  @return 切割后的图片
 */
- (UIImage *)clipImageInRect:(CGRect)rect;

@end




