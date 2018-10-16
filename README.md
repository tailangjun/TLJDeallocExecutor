# TLJDeallocExecutor
NSObject对象调用Dealloc时回调，主要应用场景有
 - 自定义观察者模式中清理weakObserver
 - 系统延迟执行导致的crash，相关类：NSObject
 - 系统定时器导致的内存泄露，对应类：NSTimer

