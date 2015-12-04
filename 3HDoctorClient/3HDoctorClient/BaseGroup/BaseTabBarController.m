//
//  BaseTabBarController.m
//  OC_Project
//
//  Created by 范英强 on 15/11/28.
//  Copyright (c) 2015年 fyq. All rights reserved.
//

#import "BaseTabBarController.h"
#import "BaseNavigationController.h"
#import "HomeViewController.h"
#import "MessageViewController.h"
#import "MineViewController.h"
@interface BaseTabBarController ()


@property (nonatomic, retain) UIView *tabBarBackView;

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadViewController];
}

- (void)loadViewController{
    HomeViewController *homeVc = [[HomeViewController alloc] init];
    homeVc.title = @"首页";
    BaseNavigationController *naHome = [[BaseNavigationController alloc] initWithRootViewController:homeVc];
    naHome.tabBarItem.image = [[UIImage imageNamed:@"首页非点击"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    naHome.tabBarItem.selectedImage = [[UIImage imageNamed:@"首页点击"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    MessageViewController *messageVc = [[MessageViewController alloc] initWithTableViewStyle:UITableViewStyleGrouped];
    messageVc.title = @"消息";
    BaseNavigationController *naMessage = [[BaseNavigationController alloc] initWithRootViewController:messageVc];
    naMessage.tabBarItem.image = [[UIImage imageNamed:@"消息非点击"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    naMessage.tabBarItem.selectedImage = [[UIImage imageNamed:@"消息点击"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    MineViewController *mineVc = [[MineViewController alloc] initWithTableViewStyle:UITableViewStyleGrouped];
    mineVc.title = @"我的";
    BaseNavigationController *naMine = [[BaseNavigationController alloc] initWithRootViewController:mineVc];
    naMine.tabBarItem.image = [[UIImage imageNamed:@"我的非点击"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    naMine.tabBarItem.selectedImage = [[UIImage imageNamed:@"我的点击"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    
    [self.tabBar insertSubview:self.tabBarBackView atIndex:0];
    self.tabBar.opaque = YES;
    self.viewControllers = @[naHome,naMessage,naMine];
    

}

- (UIView *)tabBarBackView{
    if (!_tabBarBackView) {
        _tabBarBackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, DeviceSize.width, 49)];
        _tabBarBackView.backgroundColor = [UIColor whiteColor];
    }
    return _tabBarBackView;
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
