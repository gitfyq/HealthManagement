//
//  PersonalTableViewCell.m
//  3HDoctorClient
//
//  Created by 范英强 on 15/12/4.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "PersonalTableViewCell.h"

@implementation PersonalTableViewCell

- (void)customView{
    [self.contentView addSubview:self.labTitle];
    [self.contentView addSubview:self.imgArrow];
    [self.contentView addSubview:self.labDetail];
    
    
}


- (UILabel *)labTitle{
    if (!_labTitle) {
        _labTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 100, 45)];
        _labTitle.textColor = [UIColor colorWithHEX:0x333333];
        _labTitle.font = [UIFont systemFontOfSize:15];
    }
    return _labTitle;
}

- (UILabel *)labDetail{
    if (!_labDetail) {
        _labDetail = [[UILabel alloc] initWithFrame:CGRectMake(DeviceSize.width -DeviceSize.width/2 -20 -self.imgArrow.width, 0, DeviceSize.width/2, 45)];
        _labDetail.textColor = [UIColor colorWithHEX:0x999999];
        _labDetail.font = [UIFont systemFontOfSize:13];
        _labDetail.textAlignment = NSTextAlignmentRight;
    }
    return _labDetail;
}

- (UIImageView *)imgArrow{
    if (!_imgArrow) {
        _imgArrow = [[UIImageView alloc] initWithFrame:CGRectMake(DeviceSize.width - 19/2 - 10, (45 - 34/2)/2, 19/2, 34/2)];
        _imgArrow.image = [UIImage imageNamed:@"3H-首页_键"];
        
    }
    return _imgArrow;
}

//赋值
- (void)confingWithModel:(NSDictionary *)dic{
    self.labTitle.text = dic[@"title"];
    self.labDetail.text = dic[@"detail"];
    if ([self.labDetail.text isEqualToString:@"未填写"]) {
        self.labDetail.textColor = [UIColor colorWithHEX:0x999999];
        
    }else{
        self.labDetail.textColor = [UIColor colorWithHEX:0x666666];
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
