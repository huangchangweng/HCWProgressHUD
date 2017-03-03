# HCWProgressHUD
解耦合的HUD，使用方法和MBProgressHUD类似。

![image](https://github.com/huangchangweng/HCWProgressHUD/blob/master/HCWProgressHUD.gif)

## 使用方法


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
    

作者：HCW

联系方式：599139419@qq.com

使用中如有疑问或有建议，欢迎打扰！
