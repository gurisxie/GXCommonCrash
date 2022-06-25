//
//  GXDispatchOnceCase.m
//  GXCommonCrash
//
//  Created by 谢泽昌 on 2022/6/25.
//

#import "GXDispatchOnceCase.h"


@interface GXDispatchOnceDemo : NSObject

@end

@implementation GXDispatchOnceDemo

-(instancetype)init
{
    self = [super init];
    
    [GXDispatchOnceCase sharedInstance];
    
    return self;
}

@end


@implementation GXDispatchOnceCase

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    static GXDispatchOnceCase *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[GXDispatchOnceCase alloc] init];
    });
    return instance;
}

-(instancetype)init
{
    self = [super init];
    
    GXDispatchOnceDemo* demo = [[GXDispatchOnceDemo alloc] init];
    NSLog(@"%@", demo);
    
    return self;
}

@end


