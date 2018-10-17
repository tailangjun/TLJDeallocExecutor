//
//  ViewController.m
//  TLJDeallocExecutor
//
//  Created by mengxiang on 2018/10/16.
//  Copyright © 2018年 TLJCompany. All rights reserved.
//

#import "ViewController.h"
#import "TestObserver.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    TestObserver *observer = [[TestObserver alloc] init];
    observer = nil;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationKey object:nil];
}
@end
