//
//  UIViewController+YCPopover.h
//  YCTransitionAnimation
//
//  Created by 蔡亚超 on 2018/5/17.
//  Copyright © 2018年 WellsCai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YCPopoverMacro.h"
#import "YCPopoverAnimator.h"

@interface UIViewController (YCPopover)
@property(nonatomic,strong)YCPopoverAnimator        *popoverAnimator;

- (void)yc_bottomPresentController:(UIViewController *)vc presentedHeight:(CGFloat)height completeHandle:(YCCompleteHandle)completion;

- (void)yc_centerPresentController:(UIViewController *)vc presentedSize:(CGSize)size completeHandle:(YCCompleteHandle)completion;


@end
