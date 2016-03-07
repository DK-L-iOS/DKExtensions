//
//  ImagePicker.h
//  UIView
//
//  Created by 李登科 on 16/1/21.
//  Copyright © 2016年 李登科. All rights reserved.
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
