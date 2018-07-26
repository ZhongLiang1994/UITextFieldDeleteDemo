//
//  UITextField+ZL.m
//  UITextFieldDeleteDemo
//
//  Created by 钟亮 on 2018/7/26.
//  Copyright © 2018年 zhongliang. All rights reserved.
//

#import "UITextField+ZL.h"
#import <objc/runtime.h>
@implementation UITextField (ZL)
+ (void)load{
    
    Method systemMethod = class_getInstanceMethod([self class], @selector(deleteBackward));
    
    Method customMethod = class_getInstanceMethod([self class], @selector(zl_deleteBackward));
    
    method_exchangeImplementations(systemMethod, customMethod);
    
}
- (void)zl_deleteBackward{
    
    [self zl_deleteBackward];
    
    if ([self.delegate respondsToSelector:NSSelectorFromString(@"textFieldDidDeleteBackward:")]) {
        [self.delegate performSelector:NSSelectorFromString(@"textFieldDidDeleteBackward:") withObject:self];
    }
}


@end
