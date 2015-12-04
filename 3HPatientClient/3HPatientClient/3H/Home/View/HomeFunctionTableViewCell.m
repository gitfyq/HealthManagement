//
//  HomeFunctionTableViewCell.m
//  3HPatientClient
//
//  Created by 范英强 on 15/12/4.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "HomeFunctionTableViewCell.h"

@implementation HomeFunctionTableViewCell

- (void)customView{
    NSArray *arrName = @[@"健康管理",@"我要咨询",@"健康日程",@"我要预约"];
    CGFloat f;
    CGFloat w = DeviceSize.width/4;
    if (DeviceSize.width >375) {
        f = (DeviceSize.width *86)/375;
    }else{
        f = 86;
    }
    for (int i = 0; i <arrName.count; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(w*i, 0, w, f)];
        if (i == 0 ||i == 2) {
            view.backgroundColor = [UIColor brownColor];
        }else{
            view.backgroundColor = [UIColor orangeColor];
        }
        
        [self.contentView addSubview:view];
        
        UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake((w -50)/2, (f -70)/2, 50, 50)];
        img.backgroundColor = [UIColor whiteColor];
        
        [view addSubview:img];
        
        UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(0, img.bottom +8, w, 12)];
        lab.textColor = [UIColor colorWithHEX:0xffffff];
        lab.font = [UIFont systemFontOfSize:12];
        lab.textAlignment = NSTextAlignmentCenter;
        lab.text = arrName[i];
        
        [view addSubview:lab];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
