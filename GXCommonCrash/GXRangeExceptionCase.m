//
//  GXRangeExceptionCase.m
//  GXCommonCrash
//
//  Created by 谢泽昌 on 2022/6/25.
//

#import "GXRangeExceptionCase.h"

@implementation GXRangeExceptionCase

-(instancetype)init
{
    self = [super init];
    
    NSArray* arr = @[@"1", @"2"];
    NSLog(@"%@", arr[2]);
    
    return self;
}

@end
