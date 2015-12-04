//
//  HomeHeadTableViewCell.m
//  3HPatientClient
//
//  Created by 范英强 on 15/12/4.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "HomeHeadTableViewCell.h"

@implementation HomeHeadTableViewCell

- (void)customView{
    [self.contentView addSubview:self.labLine1];
    [self.contentView addSubview:self.labLine2];
}

- (UILabel *)labLine1{
    if (!_labLine1) {
        _labLine1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 70 -0.25, DeviceSize.width/2, 0.5)];
        _labLine1.backgroundColor = [UIColor colorWithHEX:0xcccccc];
        
    }
    return _labLine1;
}

- (UILabel *)labLine2{
    if (!_labLine2) {
        _labLine2 = [[UILabel alloc] initWithFrame:CGRectMake(DeviceSize.width/2 -0.25, 0, 0.5, 105)];
        _labLine2.backgroundColor = [UIColor colorWithHEX:0xcccccc];
        
    }
    return _labLine2;
}
- (UIImageView *)imgWeather{
    if (!_imgWeather) {
        _imgWeather = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _imgWeather.image = [UIImage imageNamed:@""];
    }
    return _imgWeather;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
