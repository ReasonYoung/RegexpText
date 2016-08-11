//
//  ViewController.m
//  RegexpText
//
//  Created by RWY on 16/7/27.
//  Copyright © 2016年 rwy. All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"
#import "UIView+Notice.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *phoneNumTF;
@property (strong, nonatomic) IBOutlet UITextField *passWordTF;
@property (strong, nonatomic) IBOutlet UITextField *emailTF;
@property (strong, nonatomic) IBOutlet UITextField *identityCardTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)validateTelBtn:(id)sender {
    
    if(![Utils checkTelNumber:self.phoneNumTF.text]){
        if (_phoneNumTF.text.length == 0 ) {
            [self.view loadWithMsg:@"您暂未输入任何手机信息"];
        } else {
            [self.view loadWithMsg:@"请输入正确的手机号码"];
        }
    } else {
        [self.view loadWithMsg:@"输入了正确的手机号码"];
    }
}

- (IBAction)validatePwdBtn:(id)sender {
    if (![Utils checkPassword:self.passWordTF.text]) {
        if (_passWordTF.text.length == 0) {
            [self.view loadWithMsg:@"您暂未输入任何密码信息"];
        } else {
            [self.view loadWithMsg:@"请输入正确的密码格式"];
        }
    } else {
        [self.view loadWithMsg:@"您输入的密码格式正确!"];
    }
}

- (IBAction)validateEmailBtn:(id)sender {
    if (![Utils validateEmail:self.emailTF.text]) {
        if (_emailTF.text.length == 0) {
            [self.view loadWithMsg:@"您暂未输入任何邮箱信息"];
        } else {
            [self.view loadWithMsg:@"请输入正确的邮箱格式"];
        }
    } else {
        [self.view loadWithMsg:@"您输入的邮箱格式正确"];
    }
}

- (IBAction)validateIDBtn:(id)sender {
    if (![Utils checkUserIdCard:self.identityCardTF.text]) {
        if (_identityCardTF.text.length == 0) {
            [self.view loadWithMsg:@"您暂未输入任何身份信息"];
        } else {
            [self.view loadWithMsg:@"请输入正确的身份证号码格式"];
        }
    } else {
        [self.view loadWithMsg:@"您输入的身份证号码格式正确!!!"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
