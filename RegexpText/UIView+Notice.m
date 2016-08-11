//
//  UIView+Notice.m
//  RegexpText
//
//  Created by RWY on 16/7/28.
//  Copyright © 2016年 rwy. All rights reserved.
//

#import "UIView+Notice.h"
#import "MBProgressHUD.h"

@implementation UIView (Notice)

-(void)loadWithMsg:(NSString *)msg{
    MBProgressHUD *hh = [MBProgressHUD showHUDAddedTo:self.window animated:YES];
    hh.mode = MBProgressHUDModeText;
    hh.margin = 10.f;
    hh.removeFromSuperViewOnHide = YES;
    hh.labelText = msg;
    [hh hide:YES afterDelay:0.6f];
}

@end
