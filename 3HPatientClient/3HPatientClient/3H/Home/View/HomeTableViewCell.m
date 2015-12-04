//
//  HomeTableViewCell.m
//  3HPatientClient
//
//  Created by 范英强 on 15/12/4.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "HomeTableViewCell.h"

@implementation HomeTableViewCell


- (void)customView{
    [self.contentView addSubview:self.imgLogo];
    [self.contentView addSubview:self.labTitle];
    [self.contentView addSubview:self.labDetail];
    [self.contentView addSubview:self.imgArrow];
}

- (UIImageView *)imgLogo{
    if (!_imgLogo) {
        _imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        _imgLogo.backgroundColor = AppDefaultColor;
        _imgLogo.layer.masksToBounds = YES;
        _imgLogo.layer.cornerRadius =25;
    }
    return _imgLogo;
}

- (UILabel *)labTitle{
    if (!_labTitle) {
        _labTitle = [[UILabel alloc] initWithFrame:CGRectMake(self.imgLogo.right +10, 20, DeviceSize.width -self.imgLogo.right -10 -10, 15)];
        _labTitle.textColor = [UIColor colorWithHEX:0x333333];
        _labTitle.font = [UIFont systemFontOfSize:15];
    }
    return _labTitle;
    
}

- (UILabel *)labDetail{
    if (!_labDetail) {
        _labDetail = [[UILabel alloc] initWithFrame:CGRectMake(self.imgLogo.right +10, self.imgLogo.bottom -5 -11, DeviceSize.width -self.imgLogo.right -10 -10, 11)];
        _labDetail.textColor = [UIColor colorWithHEX:0x999999];
        _labDetail.font = [UIFont systemFontOfSize:11];
    }
    return _labDetail;
    
}

- (UIImageView *)imgArrow{
    if (!_imgArrow) {
        _imgArrow = [[UIImageView alloc] initWithFrame:CGRectMake(DeviceSize.width -15 -10, 15, 17/2, 15)];
        _imgArrow.image = [UIImage imageNamed:@"我的-设置_更多-非点击状态"];
    }
    return _imgArrow;
}

//赋值
- (void)confingWithModel:(NSString *)model{
    self.labTitle.text = @"新药彦华新药彦华";
    self.labDetail.text = @"新药彦华新药彦华新药彦华新药彦华新药彦华新药彦华新药彦华新药彦华";
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
