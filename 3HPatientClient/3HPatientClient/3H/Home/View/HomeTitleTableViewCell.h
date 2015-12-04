//
//  HomeTitleTableViewCell.h
//  3HPatientClient
//
//  Created by 范英强 on 15/12/4.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "BaseTableViewCell.h"

@interface HomeTitleTableViewCell : BaseTableViewCell

@property (nonatomic, strong) UILabel *labLine;

@property (nonatomic, strong) UILabel *labTitle;

@property (nonatomic, strong) UIImageView *imgArrow;
//赋值
- (void)confingWithModel:(NSString *)model;

@end
