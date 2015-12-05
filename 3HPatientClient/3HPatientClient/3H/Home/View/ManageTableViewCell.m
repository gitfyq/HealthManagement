//
//  ManageTableViewCell.m
//  3HPatientClient
//
//  Created by 范英强 on 15/12/5.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "ManageTableViewCell.h"

@implementation ManageTableViewCell

- (void)customView{
    [self.contentView addSubview:self.imgLogo];
    [self.contentView addSubview:self.imgArrow];
    [self.contentView addSubview:self.labTitle];
}

- (UIImageView *)imgLogo{
    if (!_imgLogo) {
        _imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 40, 40)];
        //_imgLogo.backgroundColor = AppDefaultColor;
    }
    return _imgLogo;
}

- (UIImageView *)imgArrow{
    if (!_imgArrow) {
        _imgArrow = [[UIImageView alloc] initWithFrame:CGRectMake(DeviceSize.width -17/2 -10, (60 -15)/2, 17/2, 15)];
        _imgArrow.image = [UIImage imageNamed:@"arrowImg"];
    }
    return _imgArrow;
}

- (UILabel *)labTitle{
    if (!_labTitle) {
        _labTitle = [[UILabel alloc] initWithFrame:CGRectMake(self.imgLogo.right +10, 0, DeviceSize.width -self.imgLogo.right -20 -self.imgArrow.width - 10, 60)];
        _labTitle.textColor = [UIColor colorWithHEX:0x333333];
        _labTitle.font = [UIFont systemFontOfSize:16];
    }
    return _labTitle;
}

- (void)confingWithModel:(NSDictionary *)dic{
    self.labTitle.text = dic[@"title"];
    self.imgLogo.image = [UIImage imageNamed:dic[@"img"]];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
