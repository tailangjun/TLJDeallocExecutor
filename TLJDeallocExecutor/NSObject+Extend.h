//
//  NSObject+Extend.h
//  TLJChat
//
//  Created by mengxiang on 2018/10/16.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TLJDeallocExecutor.h"

@interface NSObject (TLJDeallocExecutor)
// note
// 正常执行可以使用 __unsafe_unretained或者 __weak来修饰 weakSelf
// 延迟执行只能使用 __unsafe_unretained来修饰 weakSelf
- (void)attachForKey:(const void*)key executeAtDealloc:(TLJDeallocExecutorBlock)block;
- (void)detachForKey:(const void*)key;
@end
