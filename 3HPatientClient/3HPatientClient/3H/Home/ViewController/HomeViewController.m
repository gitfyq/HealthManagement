//
//  HomeViewController.m
//  3HDoctorClient
//
//  Created by 范英强 on 15/11/30.
//  Copyright (c) 2015年 fyq. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeHeadTableViewCell.h"
#import "HomeFunctionTableViewCell.h"
#import "HomeTitleTableViewCell.h"
#import "HomeTableViewCell.h"
#import "HomeSlidingTableViewCell.h"
//健康管理
#import "ManageViewController.h"
//我要预约
#import "AppointViewController.h"
//资讯
#import "ConsultingDynamicViewController.h"
//商城
#import "ShopViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"3H健康管理";
    // Do any additional setup after loading the view.
    //sssss
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WeakSelf(HomeViewController);
    if (indexPath.section == 0) {
        static NSString *identifier = @"HomeHeadTableViewCell";
        HomeHeadTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (cell == nil) {
            cell = [[HomeHeadTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell confingWithModel:@""];
        return cell;
    }else if(indexPath.section == 1){
        static NSString *identifier = @"HomeFunctionTableViewCell";
        HomeFunctionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (cell == nil) {
            cell = [[HomeFunctionTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        //[cell confingWithModel:1];
        [cell setHomefunctionBlock:^(NSInteger index) {
            if (index == 0) {
                ManageViewController *manageVc = [[ManageViewController alloc] initWithTableViewStyle:UITableViewStyleGrouped];
                manageVc.hidesBottomBarWhenPushed = YES;
                [weakSelf.navigationController pushViewController:manageVc animated:YES];
            }else if (index == 1){
                
            }else if(index == 2){
                
            }else{
                AppointViewController *appointVc = [[AppointViewController alloc] initWithTableViewStyle:UITableViewStyleGrouped];
                appointVc.hidesBottomBarWhenPushed = YES;
                [weakSelf.navigationController pushViewController:appointVc animated:YES];
            }
        }];
        return cell;
    }else if(indexPath.section == 2){
        if (indexPath.row == 0) {
            static NSString *identifier = @"HomeTitleTableViewCell";
            HomeTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
            if (cell == nil) {
                cell = [[HomeTitleTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            [cell confingWithModel:@"健康资讯"];
            return cell;
        }else{
            static NSString *identifier = @"HomeTableViewCell";
            HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
            if (cell == nil) {
                cell = [[HomeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            [cell confingWithModel:@"健康资讯"];
            return cell;
        }
    }else{
        if (indexPath.row == 0) {
            static NSString *identifier = @"HomeTitleTableViewCell";
            HomeTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
            if (cell == nil) {
                cell = [[HomeTitleTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            [cell confingWithModel:@"健康商城"];
            return cell;
        }else{
            static NSString *identifier = @"HomeSlidingTableViewCell";
            HomeSlidingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
            if (cell == nil) {
                cell = [[HomeSlidingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            [cell confingWithModel:@"健康商城"];
            return cell;
        }
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else if(section == 1){
        return 1;
    }else if(section == 2){
        return 3;
    }else {
        return 2;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat f;
    if (DeviceSize.width >375) {
        f = (DeviceSize.width *86)/375;
    }else{
        f = 86;
    }
    if (indexPath.section == 0) {
        return 105;
    }else if(indexPath.section ==1){
        return f;
    }else if(indexPath.section ==2){
        if (indexPath.row == 0) {
            return 42;
        }else{
            return 70;
        }
    }else{
        if (indexPath.row == 0) {
            return 42;
        }else{
            return 215;
        }
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return  [[UIView alloc] init];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            ConsultingDynamicViewController *cnsultingDynamicVc = [[ConsultingDynamicViewController alloc] initWithTableViewStyle:UITableViewStyleGrouped];
            cnsultingDynamicVc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:cnsultingDynamicVc animated:YES];
        }
    }
    if (indexPath.section == 3) {
        if (indexPath.row == 0) {
            ShopViewController *shopVc = [[ShopViewController alloc] initWithTableViewStyle:UITableViewStyleGrouped];
            shopVc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:shopVc animated:YES];
        }
    }
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
