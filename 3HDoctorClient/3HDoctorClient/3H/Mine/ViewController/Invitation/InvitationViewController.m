//
//  InvitationViewController.m
//  3HDoctorClient
//
//  Created by 范英强 on 15/12/4.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "InvitationViewController.h"

@interface InvitationViewController ()

@end

@implementation InvitationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self customBtn];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItemExtension leftBackButtonItem:@selector(backAction) andTarget:self];
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)customBtn{
    NSArray *imgArr = @[@"我的-邀请同行_新浪微博",@"我的-邀请同行_邮件",@"我的-邀请同行_微信",@"我的-邀请同行_QQ空间"];
    NSArray *titleArr = @[@"新浪微博",@"邮件",@"微信",@"QQ空间"];
    CGFloat f = (DeviceSize.width -60 -60*4)/3;
    for (int i = 0; i <imgArr.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(30 +(60 +f)*i, 20, 60, 60);
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 400 +i;
        [btn setBackgroundImage:[UIImage imageNamed:imgArr[i]] forState:UIControlStateNormal];
        [self.view addSubview:btn];
        
        UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(btn.left, btn.bottom +8, btn.width, 15)];
        lab.font = [UIFont systemFontOfSize:15];
        lab.textColor = [UIColor colorWithHEX:0x333333];
        lab.textAlignment = NSTextAlignmentCenter;
        lab.text = titleArr[i];
        
        [self.view addSubview:lab];
    }
}

- (void)btnAction:(UIButton *)btn{
    
}

- (NSString *)title{
    return @"邀请";
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
