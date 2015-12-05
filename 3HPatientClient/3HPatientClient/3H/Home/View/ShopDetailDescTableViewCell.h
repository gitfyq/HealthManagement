//
//  ShopDetailDescTableViewCell.h
//  3HPatientClient
//
//  Created by 范英强 on 15/12/5.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "BaseTableViewCell.h"

@interface ShopDetailDescTableViewCell : BaseTableViewCell

@property (nonatomic, strong) UILabel *labTitle;
//赋值
- (CGFloat)confingWithModel:(NSString *)model;
@end
