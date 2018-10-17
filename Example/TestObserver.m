//
//  TestObserver.m
//  TLJDeallocExecutor
//
//  Created by mengxiang on 2018/10/17.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import "TestObserver.h"
#import "NSObject+Extend.h"

static void *kObserverKey = &kObserverKey;
NSString *kNotificationKey = @"kNotificationKey";

@implementation TestObserver
- (instancetype)init
{
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(onFireNotification)
                                                     name:kNotificationKey
                                                   object:nil];
        
        __unsafe_unretained typeof(self) weakSelf = self;
        [self attachForKey:kObserverKey executeAtDealloc:^{
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [[NSNotificationCenter defaultCenter] removeObserver:weakSelf
                                                                name:kNotificationKey
                                                              object:nil];
            });
        }];
    }
    
    return self;
}

- (void)onFireNotification
{
    
}
@end
