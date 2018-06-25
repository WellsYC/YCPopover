# YCPopover
a popover from bottom or center,you just need define a viewcontroller.

![image](https://github.com/WellsYC/YCPopover/blob/master/YCpopoverDemo/Untitled.gif)


## Usage


**Method1:**  using Cocoapods:

``pod 'YCPopover'``

then

```objective-c
#import <UIViewController+YCPopover.h>
```

**Method2**: moving ``YCPopoverCompont``folder into your project.

then

```objective-c
#import <UIViewController+YCPopover.h>
```

## Example
you just need define a viewcontroller(eg. PopoverViewController) , there are two kinds of styles,ActionSheet or Alert.
you just to write a line to show.

##### ①ActionSheet

```
PopoverViewController *vc = [PopoverViewController new];
[self yc_centerPresentController:vc presentedSize:CGSizeMake(200, 300) completeHandle:^(BOOL presented) {
if (presented) {
NSLog(@"弹出了");
}else{
NSLog(@"消失了");
}
}];
```
##### ②Alert
```
PopoverViewController *vc = [PopoverViewController new];
[self yc_bottomPresentController:vc presentedHeight:220 completeHandle:^(BOOL presented) {
if (presented) {
NSLog(@"弹出了");
}else{
NSLog(@"消失了");
}
}];
```

