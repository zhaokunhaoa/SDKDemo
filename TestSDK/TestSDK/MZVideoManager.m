//
//  MZVideoManager.m
//  MZVideo
//
//  Created by zhaokun on 2018/5/16.
//  Copyright © 2018年 com.maizijf.mzvideo. All rights reserved.
//

#import "MZVideoManager.h"
#import "MZVideoPlayerController.h"


@implementation MZVideoManager


+ (void)openVideoPlayerFromVC:(UIViewController *)viewController {
    if (!viewController) {
        NSLog(@"viewController 不能为空");
        return;
    }
    
    if (![viewController isKindOfClass:[UIViewController class]]) {
        NSLog(@"viewController 不是 UIViewController 类或者其子类");
        return;
    }
    
    [viewController presentViewController:[MZVideoPlayerController new] animated:true completion:^{
        NSLog(@"弹出成功");
    }];
}


@end
