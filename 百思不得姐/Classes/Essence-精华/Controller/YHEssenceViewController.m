//
//  YHEssenceViewController.m
//  百思不得姐
//
//  Created by zyh on 16/7/2.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "YHEssenceViewController.h"

@interface YHEssenceViewController ()

@end

@implementation YHEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //标题
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    //左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
}

- (void)tagClick
{
    
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
