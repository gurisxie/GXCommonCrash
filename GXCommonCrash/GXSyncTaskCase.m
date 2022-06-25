//
//  GXSyncTaskCase.m
//  GXCommonCrash
//
//  Created by 谢泽昌 on 2022/6/25.
//

#import "GXSyncTaskCase.h"

@implementation GXSyncTaskCase

-(instancetype)init
{
    self = [super init];
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"1");
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"2");
        });
        NSLog(@"3");
    });
    return self;
}


@end
