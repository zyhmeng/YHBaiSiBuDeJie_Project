//
//  YHTabBarController.m
//  百思不得姐
//
//  Created by zyh on 16/6/25.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "YHTabBarController.h"
#import "YHTabBar.h"
#import "YHEssenceViewController.h"
#import "YHFollowViewController.h"
#import "YHMeViewController.h"
#import "YHNewViewController.h"
#import "YHNavigationController.h"

@interface YHTabBarController ()
@end

@implementation YHTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置所有Item属性
    [self setupAppTabBarItem];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark - 设置所有Item属性
- (void)setupAppTabBarItem
{
    UITabBarItem *item = [UITabBarItem appearance];
    //普通状态下属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    
    //选中状态下的属性
    NSMutableDictionary *selectAttrs = [NSMutableDictionary dictionary];
    selectAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:selectAttrs forState:UIControlStateSelected];
    
    //添加子控制器
    [self setupOneChildViewController:[[YHEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupOneChildViewController:[[YHNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    
    //中间占位的控制器
//    [self setupOneChildViewController:[[UIViewController alloc]init] title:nil image:nil selectedImage:nil];
    
    [self setupOneChildViewController:[[YHFollowViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setupOneChildViewController:[[YHMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    
    [self setValue:[[YHTabBar alloc]init] forKeyPath:@"tabBar"];
}


#pragma mark - 添加tabBar的子控制器
- (void)setupOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UINavigationController *nac = [[YHNavigationController alloc]initWithRootViewController:vc];
    
    vc.tabBarItem.title = title;
    
    if (image.length) {
        
        vc.tabBarItem.image = [UIImage imageNamed:image];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    }
    
    [self addChildViewController:nac];
}

@end
