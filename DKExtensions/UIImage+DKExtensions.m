//
//  UIImage+DKExtensions.m
//  UIImage
//
//  Created by DK-Li on 16/1/13.
//  Copyright (c) 2016年 DK-Li. All rights reserved.
//

#import "UIImage+DKExtensions.h"

@implementation UIImage (DKExtensions)

/**
 *  保持原来的长宽比，生成一个缩略图
 *
 *  @param image 需要处理的图片
 *  @param asize 新图片的大小
 *
 *  @return 返回新生成的图片
 */
+ (UIImage *)thumbnailWithImageWithoutScale:(UIImage *)image size:(CGSize)asize
{
    UIImage *newimage;
    
    if (nil == image) {
        
        newimage = nil;
        
    }
    else
    {
        
        CGSize oldsize = image.size;
        
        CGRect rect;
        
        if (asize.width/asize.height > oldsize.width/oldsize.height) {
            
            rect.size.width = asize.height*oldsize.width/oldsize.height;
            
            rect.size.height = asize.height;
            
            rect.origin.x = (asize.width - rect.size.width)/2;
            
            rect.origin.y = 0;
            
        }
        else
        {
            
            rect.size.width = asize.width;
            
            rect.size.height = asize.width*oldsize.height/oldsize.width;
            
            rect.origin.x = 0;
            
            rect.origin.y = (asize.height - rect.size.height)/2;
            
        }
        
        //开始绘图生成水印图片
        
        UIGraphicsBeginImageContext(asize);
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextSetFillColorWithColor(context, [[UIColor clearColor] CGColor]);
        
        UIRectFill(CGRectMake(0, 0, asize.width, asize.height));//clear background
        
        [image drawInRect:rect];
        
        newimage = UIGraphicsGetImageFromCurrentImageContext();
        
        //结束绘图
        
        UIGraphicsEndImageContext();
        
    }
    
    return newimage;
}

/**
 *  自动缩放到指定大小
 *
 *  @param image 需要处理的图片
 *  @param asize 制定尺寸
 *
 *  @return 返回新生成的图片
 */
+ (UIImage *)thumbnailWithImage:(UIImage *)image size:(CGSize)asize
{
    UIImage *newimage;
    
    if (nil == image) {
        
        newimage = nil;
    }
    else
    {
        UIGraphicsBeginImageContext(asize);
        
        [image drawInRect:CGRectMake(0, 0, asize.width, asize.height)];
        
        newimage = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
    }
    
    return newimage;
}

/**
 *  切割图片
 *
 *  @param style 切割样式
 *
 *  @return 切割后的图片
 */
- (UIImage *)imageByCroppingWithStyle:(DKCropImageStyle)style
{
    CGRect rect;
    
    switch(style){
            
        case DKCropImageStyleLeft:
            
            rect=CGRectMake(0,0,self.size.width/2,self.size.height);
            
            break;
            
        case DKCropImageStyleCenter:
            
            rect=CGRectMake(self.size.width/4,0,self.size.width/2,self.size.height);
            
            break;
            
        case DKCropImageStyleRight:
            
            rect=CGRectMake(self.size.width/2,0,self.size.width/2,self.size.height);
            
            break;
            
        case DKCropImageStyleLeftOneOfThird:
            
            rect=CGRectMake(0,0,self.size.width/3,self.size.height);
            
            break;
            
        case DKCropImageStyleCenterOneOfThird:
            
            rect=CGRectMake(self.size.width/3,0,self.size.width/3,self.size.height);
            
            break;
            
        case DKCropImageStyleRightOneOfThird:
            
            rect=CGRectMake(self.size.width/3*2,0,self.size.width/3,self.size.height);
            
            break;
            
        case DKCropImageStyleLeftQuarter:
            
            rect=CGRectMake(0,0,self.size.width/4,self.size.height);
            
            break;
            
        case DKCropImageStyleCenterLeftQuarter:
            
            rect=CGRectMake(self.size.width/4,0,self.size.width/4,self.size.height);
            
            break;
            
        case DKCropImageStyleCenterRightQuarter:
            
            rect=CGRectMake(self.size.width/4*2,0,self.size.width/4,self.size.height);
            
            break;
            
        case DKCropImageStyleRightQuarter:
            
            rect=CGRectMake(self.size.width/4*3,0,self.size.width/4,self.size.height);
            
            break;
            
        default:
            
            break;
            
    }
    
    CGImageRef imageRef=self.CGImage;
    
    CGImageRef imagePartRef=CGImageCreateWithImageInRect(imageRef,rect);
    
    UIImage *cropImage=[UIImage imageWithCGImage:imagePartRef];
    
    CGImageRelease(imagePartRef);
    
    return cropImage;
}


/**
 *  切割图片
 *
 *  @param rect 切割的范围
 *
 *  @return 切割后的图片
 */
- (UIImage *)clipImageInRect:(CGRect)rect
{
    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], rect);
    UIImage *thumbScale = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return thumbScale;
}


@end
