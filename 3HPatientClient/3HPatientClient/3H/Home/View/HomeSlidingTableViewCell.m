//
//  HomeSlidingTableViewCell.m
//  3HPatientClient
//
//  Created by 范英强 on 15/12/5.
//  Copyright © 2015年 fyq. All rights reserved.
//

#import "HomeSlidingTableViewCell.h"

@implementation HomeSlidingTableViewCell

- (void)customView{
    [self.contentView addSubview:self.scrollView];
}

- (UIScrollView *)scrollView{
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, DeviceSize.width, 215)];
        _scrollView.delegate = self;
//        _scrollView.contentSize = CGSizeMake(DeviceSize.width * 2, DeviceSize.height - self.frameTopHeight -self.topView.height);
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
//        _scrollView.pagingEnabled = YES;
        _scrollView.bounces = NO;
    }
    return _scrollView;
}

- (void)confingWithModel:(NSString *)model{
    for (int i = 0; i<10; i++) {
        HomeSlidingCustomView *customView = [[HomeSlidingCustomView alloc] initWithFrame:CGRectMake(10 +150*i, 10, 140, 195)];
        [customView confingWithModel:@""];
        
        [self.scrollView addSubview:customView];
    }
    self.scrollView.contentSize = CGSizeMake(150 *10 +10, 0);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
