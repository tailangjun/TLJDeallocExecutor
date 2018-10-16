//
//  WeakObserver.m
//  TLJDeallocExecutor
//
//  Created by mengxiang on 2018/10/16.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import "WeakObserver.h"

@implementation WeakObserver
- (instancetype)initWithObserver:(id)observer
{
    if (self = [super init]) {
        _observer = observer;
    }
    
    return self;
}
@end
