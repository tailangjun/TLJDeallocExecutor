//
//  WeakObserver.h
//  TLJDeallocExecutor
//
//  Created by mengxiang on 2018/10/16.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeakObserver : NSObject
- (instancetype)initWithObserver:(id)observer;

@property(nonatomic, weak, readonly) id observer;
@end
