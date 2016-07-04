//
//  UIBarButtonItem+YHExtension.h
//  百思不得姐
//
//  Created by zyh on 16/7/2.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YHExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end
