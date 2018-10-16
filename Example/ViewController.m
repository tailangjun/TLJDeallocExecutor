//
//  ViewController.m
//  TLJDeallocExecutor
//
//  Created by mengxiang on 2018/10/16.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Extend.h"
#import "WeakObserver.h"

static void *kObserverKey = &kObserverKey;

@interface ViewController ()
@property(nonatomic, strong) NSObject *observer;
@property(nonatomic, strong) WeakObserver *weakObserver;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _observer = [[NSObject alloc] init];
    _weakObserver = [[WeakObserver alloc] initWithObserver:_observer];
    
    __unsafe_unretained typeof(self) weakSelf = self;
    [_observer attachForKey:kObserverKey executeAtDealloc:^{
        weakSelf.weakObserver = nil;
    }];
    
    _observer = nil;
}
@end
