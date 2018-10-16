//
//  NSObject+Extend.m
//  TLJChat
//
//  Created by mengxiang on 2018/10/16.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import "NSObject+Extend.h"
#import <objc/runtime.h>

@implementation NSObject (TLJDeallocExecutor)

- (void)attachForKey:(const void*)key executeAtDealloc:(TLJDeallocExecutorBlock)block
{
    if (!block) return;
    
    @autoreleasepool {
        TLJDeallocExecutor *executor = objc_getAssociatedObject(self, key);
        if (!executor) {
            executor = [[TLJDeallocExecutor alloc] initWithBlock:block];
            objc_setAssociatedObject(self, key, executor, OBJC_ASSOCIATION_RETAIN);
        }
    }
}

- (void)detachForKey:(const void *)key
{
    @autoreleasepool {
        TLJDeallocExecutor *executor = objc_getAssociatedObject(self, key);
        if (!executor) {
            objc_setAssociatedObject(self, key, nil, OBJC_ASSOCIATION_RETAIN);
        }
    }
}
@end
