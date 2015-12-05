//
//  HomeFunctionTableViewCell.h
//  3HPatientClient
//
//  Created by 范英强 on 15/12/4.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "BaseTableViewCell.h"

@interface HomeFunctionTableViewCell : BaseTableViewCell
// 0 健康管理 1 我要咨询 2健康日程 3我要预约
@property (nonatomic,copy) void(^HomefunctionBlock)(NSInteger index);
@end
