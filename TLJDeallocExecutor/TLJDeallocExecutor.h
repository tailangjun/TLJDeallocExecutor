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
// 注意: 需要使用 __unsafe_unretained来修饰 weakSelf，而不可用 __weak
- (instancetype)initWithBlock:(TLJDeallocExecutorBlock)block;
@end
