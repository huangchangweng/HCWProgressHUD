//
//  ViewController.m
//  Example
//
//  Created by BOOU on 2017/3/2.
//  Copyright © 2017年 HCW. All rights reserved.
//

#import "ViewController.h"
#import "HCWProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCWProgressHUD *hud = [HCWProgressHUD showHUDAddedTo:self.view animated:YES tapContentBlock:^(HCWProgressHUDMode mode) {
        
    } clickButtonBlock:^(HCWProgressHUDMode mode) {
        
    }];
    
    hud.buttonCorlor = [UIColor blueColor];

    // 没有网络
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        hud.mode = HCWProgressHUDModeNoInternet;
        
        // 没有数据
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            hud.mode = HCWProgressHUDModeNoData;
            
            // 隐藏
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [HCWProgressHUD hideHUDForView:self.view animated:YES];
            });
        });
    });
}


@end
