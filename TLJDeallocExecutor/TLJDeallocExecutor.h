//
//  TLJDeallocExecutor.h
//  TLJChat
//
//  Created by mengxiang on 2018/10/16.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^TLJDeallocExecutorBlock)(void);

@interface TLJDeallocExecutor : NSObject
- (instancetype)initWithBlock:(TLJDeallocExecutorBlock)block;
@end
