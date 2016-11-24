//
//  UIControl+EventInterval.m
//  ymw
//
//  Created by xiang-chen on 16/2/23.
//  Copyright © 2016年 yesmywine. All rights reserved.
//

#import "UIControl+EventInterval.h"
#import <objc/runtime.h>


@implementation UIControl (EventInterval)

+(void)load{
    Method a = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method b = class_getInstanceMethod(self, @selector(__uxy_sendAction:to:forEvent:));
    method_exchangeImplementations(a, b);
}

- (NSTimeInterval)uxy_acceptEventInterval
{
    return [objc_getAssociatedObject(self, UIControl_acceptEventInterval) doubleValue];
}
- (void)setUxy_acceptEventInterval:(NSTimeInterval)uxy_acceptEventInterval
{
    objc_setAssociatedObject(self, UIControl_acceptEventInterval, @(uxy_acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (BOOL)uxy_ignoreEvent
{
    return [objc_getAssociatedObject(self, UIControl_ignoreEvent) doubleValue];
}
- (void)setUxy_ignoreEvent:(BOOL)uxy_ignoreEvent
{
    objc_setAssociatedObject(self, UIControl_ignoreEvent, @(uxy_ignoreEvent), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)__uxy_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    if (self.uxy_ignoreEvent) return;
    if (self.uxy_acceptEventInterval > 0)
    {
        self.uxy_ignoreEvent = YES;
        [self performSelector:@selector(setUxy_ignoreEvent:) withObject:@(NO) afterDelay:self.uxy_acceptEventInterval];
    }
    [self __uxy_sendAction:action to:target forEvent:event];
}
@end
