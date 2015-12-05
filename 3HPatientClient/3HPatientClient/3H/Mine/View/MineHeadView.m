//
//  MineHeadView.m
//  3HPatientClient
//
//  Created by 范英强 on 15/12/5.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "MineHeadView.h"

@implementation MineHeadView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = AppDefaultColor;
        [self addSubview:self.imgPatientPic];
        [self.imgPatientPic addSubview:self.labPatientSex];
        [self addSubview:self.labPatientName];
    }
    return self;
}

- (UIImageView *)imgPatientPic{
    if (!_imgPatientPic) {
        _imgPatientPic = [[UIImageView alloc] initWithFrame:CGRectMake((DeviceSize.width -65)/2, 15, 65, 65)];
        _imgPatientPic.backgroundColor = [UIColor grayColor];
        _imgPatientPic.layer.masksToBounds = YES;
        _imgPatientPic.layer.cornerRadius = 65/2;
        _imgPatientPic.clipsToBounds = NO;
    }
    return _imgPatientPic;
}

- (UILabel *)labPatientSex{
    if (!_labPatientSex) {
        _labPatientSex = [[UILabel alloc] initWithFrame:CGRectMake(self.imgPatientPic.width - 20, self.imgPatientPic.height -20, 20, 20)];
        _labPatientSex.textColor = AppDefaultColor;
        _labPatientSex.font = [UIFont systemFontOfSize:13];
        _labPatientSex.layer.borderColor = AppDefaultColor.CGColor;
        _labPatientSex.layer.borderWidth = 0.5;
        _labPatientSex.layer.masksToBounds = YES;
        _labPatientSex.layer.cornerRadius = 10;
        _labPatientSex.backgroundColor = [UIColor colorWithHEX:0xffffff];
        _labPatientSex.textAlignment = NSTextAlignmentCenter;
    }
    return _labPatientSex;
}

- (UILabel *)labPatientName{
    if (!_labPatientName) {
        _labPatientName = [[UILabel alloc] initWithFrame:CGRectMake(0, self.imgPatientPic.bottom +10, DeviceSize.width, 15)];
        _labPatientName.textColor = [UIColor colorWithHEX:0xffffff];
        _labPatientName.font = [UIFont systemFontOfSize:15];
        _labPatientName.textAlignment = NSTextAlignmentCenter;
    }
    return _labPatientName;
}
//赋值

- (void)confingWithModel:(NSInteger )model{
    self.labPatientSex.text = @"男";
    self.labPatientName.text = @"李晓光";
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
