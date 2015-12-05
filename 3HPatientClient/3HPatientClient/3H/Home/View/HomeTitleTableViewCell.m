//
//  HomeTitleTableViewCell.m
//  3HPatientClient
//
//  Created by 范英强 on 15/12/4.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "HomeTitleTableViewCell.h"

@implementation HomeTitleTableViewCell


- (void)customView{
    [self.contentView addSubview:self.labLine];
    [self.contentView addSubview:self.labTitle];
    [self.contentView addSubview:self.imgArrow];
}

- (UILabel *)labLine{
    if (!_labLine) {
        _labLine = [[UILabel alloc] initWithFrame:CGRectMake(10, (42 -15)/2, 2, 15)];
        _labLine.backgroundColor = AppDefaultColor;
        _labLine.layer.masksToBounds = YES;
        _labLine.layer.cornerRadius = 1;
    }
    return _labLine;
}

- (UILabel *)labTitle{
    if (!_labTitle) {
        _labTitle = [[UILabel alloc] initWithFrame:CGRectMake(self.labLine.right +10, 0, DeviceSize.width -self.labLine.right -10 -10, 42)];
        _labTitle.textColor = AppDefaultColor;
        _labTitle.font = [UIFont systemFontOfSize:15];
    }
    return _labTitle;
    
}

- (UIImageView *)imgArrow{
    if (!_imgArrow) {
        _imgArrow = [[UIImageView alloc] initWithFrame:CGRectMake(DeviceSize.width -17/2 -10, (42 -15)/2, 17/2, 15)];
        _imgArrow.image = [UIImage imageNamed:@"arrowImg"];
    }
    return _imgArrow;
}

//赋值
- (void)confingWithModel:(NSString *)model{
    self.labTitle.text = model;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
