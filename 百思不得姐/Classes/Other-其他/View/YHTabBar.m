//
//  YHTabBar.m
//  百思不得姐
//
//  Created by zyh on 16/6/29.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "YHTabBar.h"

@interface YHTabBar()
@property (nonatomic, weak) UIButton *publishButton;

@end

@implementation YHTabBar

- (void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat buttonW = self.yh_width / 5;
    CGFloat buttonH = self.yh_height;
    CGFloat buttonY = 0;
    
    int buttonIndex = 0;
    
    
    for (UIView *subViews in self.subviews) {
        
        if (![subViews isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        
        CGFloat buttonX = buttonIndex * buttonW;
        
        if (buttonIndex >= 2) {
            
            buttonX += buttonW;
        }
        subViews.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        buttonIndex++;
    }
    
    self.publishButton.yh_width = buttonW;
    self.publishButton.yh_height = buttonH;
    self.publishButton.yh_centerX = self.yh_width*0.5;
    self.publishButton.yh_centerY = self.yh_height*0.5;
    
}

#pragma mark - 懒加载
- (UIButton *)publishButton
{
    if (!_publishButton) {
        
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        
        [publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:publishButton];
        _publishButton = publishButton;
    }
    
    return _publishButton;
}

#pragma mark - 加号的点击事件
- (void)publishClick
{
    NSLog(@"%s",__func__);
}


@end
