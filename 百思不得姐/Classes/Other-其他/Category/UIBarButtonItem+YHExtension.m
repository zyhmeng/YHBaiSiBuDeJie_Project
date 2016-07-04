//
//  UIBarButtonItem+YHExtension.m
//  百思不得姐
//
//  Created by zyh on 16/7/2.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "UIBarButtonItem+YHExtension.h"

@implementation UIBarButtonItem (YHExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    
    return [[self alloc] initWithCustomView:button];
}
@end
