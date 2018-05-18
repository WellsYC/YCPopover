//
//  ViewController.m
//  Demo
//
//  Created by 蔡亚超 on 2018/5/18.
//  Copyright © 2018年 WellsCai. All rights reserved.
//

#import "ViewController.h"
#import "PopoverViewController.h"

#import "UIViewController+YCPopover.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)alertAction:(id)sender {
    PopoverViewController *vc = [PopoverViewController new];
    [self yc_centerPresentController:vc presentedSize:CGSizeMake(200, 300) completeHandle:^(BOOL presented) {
        if (presented) {
            NSLog(@"弹出了");
        }else{
            NSLog(@"消失了");
        }
    }];
}
- (IBAction)sheetAction:(id)sender {
    PopoverViewController *vc = [PopoverViewController new];
    [self yc_bottomPresentController:vc presentedHeight:220 completeHandle:^(BOOL presented) {
        if (presented) {
            NSLog(@"弹出了");
        }else{
            NSLog(@"消失了");
        }
    }];
}




@end
