//
//  ViewController.m
//  numberB
//
//  Created by apple on 2018/11/7.
//  Copyright © 2018年 GXT. All rights reserved.
//

#import "ViewController.h"
#import "SHMTestNumBTN.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SHMTestNumBTN *testBTN = [[SHMTestNumBTN alloc]initWithFrame:CGRectMake(120, 200, 150, 30)];
    
    testBTN.countDownButtonBlock = ^{
        //开始获取验证码
    };
    testBTN.second = 30;
    [self.view addSubview:testBTN];
}


@end
