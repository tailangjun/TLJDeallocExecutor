//
//  TLJDeallocExecutor.m
//  TLJChat
//
//  Created by mengxiang on 2018/10/16.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import "TLJDeallocExecutor.h"

@implementation TLJDeallocExecutor {
    TLJDeallocExecutorBlock _block;
}

- (instancetype)initWithBlock:(TLJDeallocExecutorBlock)block
{
    if (self = [super init]) {
        _block = [block copy];
    }
    
    return self;
}

- (void)dealloc
{
    if (_block) {
        _block();
    }
}
@end
