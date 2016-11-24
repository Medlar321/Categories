//
//  UIControl+EventInterval.h
//  ymw
//
//  Created by xiang-chen on 16/2/23.
//  Copyright © 2016年 yesmywine. All rights reserved.
//

#import <UIKit/UIKit.h>

static const char *UIControl_acceptEventInterval = "UIControl_acceptEventInterval";
static const char *UIControl_ignoreEvent = "UIControl_ignoreEvent";
@interface UIControl (EventInterval)
@property (nonatomic, assign) NSTimeInterval uxy_acceptEventInterval;   // 可以用这个给重复点击加间隔
@property (nonatomic, assign) BOOL uxy_ignoreEvent;
@end
