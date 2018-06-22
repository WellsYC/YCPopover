//
//  YCPopoverMacro.h
//  YCTransitionAnimation
//
//  Created by 蔡亚超 on 2018/5/17.
//  Copyright © 2018年 WellsCai. All rights reserved.
//

#ifndef YCPopoverMacro_h
#define YCPopoverMacro_h

#define WeakSelf(weakSelf)  __weak __typeof(&*self)weakSelf = self;

typedef void(^YCCompleteHandle)(BOOL presented);

typedef NS_ENUM(NSUInteger, YCPopoverType){
    YCPopoverTypeActionSheet = 1,
    YCPopoverTypeAlert = 2
};

#endif /* YCPopoverMacro_h */
