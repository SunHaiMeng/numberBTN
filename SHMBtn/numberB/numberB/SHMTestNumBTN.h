//
//  SHMTestNumBTN.h
//  GXTFrameWork
//
//  Created by apple on 2016/11/11.
//  Copyright © 2016年 GXT. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SHMTestNumBTN;
typedef void (^ClickCountDownButtonBlock)(void);
@interface SHMTestNumBTN : UIButton
@property(nonatomic , assign) int second; //开始时间数
@property(nonatomic , copy) ClickCountDownButtonBlock countDownButtonBlock; //点击按钮
@end
