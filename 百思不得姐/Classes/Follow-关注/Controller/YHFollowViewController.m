//
//  YHFollowViewController.m
//  百思不得姐
//
//  Created by zyh on 16/7/2.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "YHFollowViewController.h"
#import "YHRecommentFollowViewController.h"

@interface YHFollowViewController ()

@end

@implementation YHFollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的关注";
    
    //左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(followClick)];
    
}

- (void)followClick
{
    YHRecommentFollowViewController *recommentFollow = [[YHRecommentFollowViewController alloc]init];
    [self.navigationController pushViewController:recommentFollow animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
