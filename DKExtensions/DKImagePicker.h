//
//  ImagePicker.h
//  UIView
//
//  Created by DK-Li on 16/1/13.
//  Copyright (c) 2016年 DK-Li. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^DKImagePickerFinishAction)(UIImage *image);

@interface DKImagePicker : NSObject

/**
 @param viewController  用于present UIImagePickerController对象
 @param allowsEditing   是否允许用户编辑图像
 */
+ (void)showImagePickerFromViewController:(UIViewController *)viewController
                            allowsEditing:(BOOL)allowsEditing
                             finishAction:(DKImagePickerFinishAction)finishAction;

@end
