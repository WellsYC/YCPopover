//
//  YCPresentationController.m
//  YCTransitionAnimation
//
//  Created by 蔡亚超 on 2018/5/17.
//  Copyright © 2018年 WellsCai. All rights reserved.
//

#import "YCPresentationController.h"
@interface YCPresentationController()
@end
@implementation YCPresentationController

- (void)containerViewWillLayoutSubviews{
    [super containerViewWillLayoutSubviews];
    
    // 设置弹出视图尺寸
    if (_popoverType == YCPopoverTypeAlert) {
        self.presentedView.frame = CGRectMake(self.containerView.center.x - self.presentedSize.width * 0.5, self.containerView.center.y - self.presentedSize.height * 0.5, self.presentedSize.width, self.presentedSize.height);
    }else{
        self.presentedView.frame = CGRectMake(0, self.containerView.bounds.size.height - self.presentedHeight, self.containerView.bounds.size.width, self.presentedHeight);
    }
    //添加蒙版
    [self.containerView insertSubview:self.coverView atIndex:0];
}

- (UIView *)coverView{
    if (!_coverView) {
        _coverView = [[UIView alloc] initWithFrame:self.containerView.bounds];
        _coverView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2f];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(coverViewClick)];
        [_coverView addGestureRecognizer:tap];
    }
    return _coverView;
}

- (void)coverViewClick{
    [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
}
@end
