//
//  UIImage+DKExtensions.m
//  UIImage
//
//  Created by 李登科 on 16/1/28.
//  Copyright (c) 2016年 李登科. All rights reserved.
//

#import "UIImage+DKExtensions.h"

@implementation UIImage (DKExtensions)

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

- (UIImage *)clipImageInRect:(CGRect)rect
{
    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], rect);
    UIImage *thumbScale = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return thumbScale;
}


@end
