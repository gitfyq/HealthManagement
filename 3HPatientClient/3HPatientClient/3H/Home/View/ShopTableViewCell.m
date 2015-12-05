//
//  ShopTableViewCell.m
//  3HPatientClient
//
//  Created by 范英强 on 15/12/5.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "ShopTableViewCell.h"

@implementation ShopTableViewCell

- (void)customView{
    self.contentView.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:self.customView1];
    [self.contentView addSubview:self.customView2];
}

- (ShopCustomView *)customView1{
    if (!_customView1) {
        _customView1 = [[ShopCustomView alloc] initWithFrame:CGRectMake(10, 1, DeviceSize.width/2 -15, 195)];
    }
    return _customView1;
}

- (ShopCustomView *)customView2{
    if (!_customView2) {
        _customView2 = [[ShopCustomView alloc] initWithFrame:CGRectMake(self.customView1.right +10, 1, DeviceSize.width/2 -15, 195)];
    }
    return _customView2;
}

//赋值
- (void)confingWithModel:(NSString *)model{
    [self.customView1 confingWithModel:@""];
    [self.customView2 confingWithModel:@""];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
