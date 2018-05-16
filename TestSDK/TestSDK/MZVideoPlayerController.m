//
//  MZVideoPlayerController.m
//  MZVideo
//
//  Created by zhaokun on 2018/5/16.
//  Copyright © 2018年 com.maizijf.mzvideo. All rights reserved.
//

#import "MZVideoPlayerController.h"
#import "MZVideoMacro.h"

@interface MZVideoPlayerController ()

@end

@implementation MZVideoPlayerController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor redColor]];
    UILabel *mark = [[UILabel alloc] initWithFrame:CGRectMake(kMZVWidth * 0.5 - 50, kMZVHeight * 0.5 - 30, 100, 60)];
    mark.text = @"我是sdk";
    [self.view addSubview:mark];
    
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeButton setTitle:@"X" forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    closeButton.frame = CGRectMake(10, 30, 40, 40);
    [self.view addSubview:closeButton];
}

- (void)close {
    [self dismissViewControllerAnimated:true completion:^{
        NSLog(@"播放器成功弹下");
    }];
}

@end
