//
//  SHMTestNumBTN.m
//  GXTFrameWork
//
//  Created by apple on 2016/11/11.
//  Copyright © 2016年 GXT. All rights reserved.
//

#import "SHMTestNumBTN.h"

@implementation SHMTestNumBTN{
    NSTimer *_timer;
    int _initialTimer;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setTitle:@"获取验证码" forState:0];
        self.layer.cornerRadius = 2.0;
        self.titleLabel.font=[UIFont systemFontOfSize:16];
        [self setTitleColor:[UIColor greenColor] forState:0];
        [self addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
-(void)setSecond:(int)second{
    _second = second;
    _initialTimer = _second;
}
-(void)click:(SHMTestNumBTN *)semder{
    //获取验证码
    _countDownButtonBlock();
    //
    self.userInteractionEnabled = NO;
    [self setTitle:[NSString stringWithFormat:@"%02d 秒后重新获取",_second] forState:0];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerStart:) userInfo:nil repeats:YES];
}
-(void)timerStart:(NSTimer *)theTimer {
    if (_initialTimer == 1){
        _initialTimer = _second;
        [self stop];
    }else{
        _initialTimer--;
        [self setTitle:[NSString stringWithFormat:@"%02d 秒后重新获取",_initialTimer] forState:0];
    }
}
- (void)stop{
    self.userInteractionEnabled = YES;
    if (_timer) {
        [_timer invalidate]; //停止计时器
        [self setTitle:@"重新获取" forState:UIControlStateNormal];
    }
}
-(void)dealloc{  //销毁计时器
    if (_timer) {
        [_timer invalidate];
        _timer = nil;
    }
}

@end
