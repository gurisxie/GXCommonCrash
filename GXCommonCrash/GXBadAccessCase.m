//
//  GXBadAccessCase.m
//  GXCommonCrash
//
//  Created by 谢泽昌 on 2022/6/25.
//

#import "GXBadAccessCase.h"

@interface GXBadAccessCase()

@property (nonatomic, strong) NSString* str;

@end

@implementation GXBadAccessCase

-(instancetype)init
{
    self = [super init];
    dispatch_queue_t queue = dispatch_queue_create("gx.queue", DISPATCH_QUEUE_CONCURRENT);
    for (int i = 0; i < 10000; i++) {
        dispatch_async(queue, ^{
            self.str = [NSString stringWithFormat:@"%@", @"123456789123456"];
        });
    }
    return self;
}

@end
