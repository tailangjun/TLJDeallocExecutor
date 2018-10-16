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
- (void)attachForKey:(const void*)key executeAtDealloc:(TLJDeallocExecutorBlock)block;
- (void)detachForKey:(const void*)key;
@end
