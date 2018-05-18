//
//  YCPresentationController.h
//  YCTransitionAnimation
//
//  Created by 蔡亚超 on 2018/5/17.
//  Copyright © 2018年 WellsCai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YCPopoverMacro.h"

@interface YCPresentationController : UIPresentationController
@property(nonatomic,assign)CGSize           presentedSize;
@property(nonatomic,assign)CGFloat          presentedHeight;

@property(nonatomic,strong)UIView           *coverView;
@property(nonatomic,assign)YCPopoverType    popoverType;

@end
