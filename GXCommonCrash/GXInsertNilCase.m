//
//  GXInsertNilCase.m
//  GXCommonCrash
//
//  Created by 谢泽昌 on 2022/6/25.
//

#import "GXInsertNilCase.h"

@interface GXInsertNilCase()

@property (nonatomic, strong) NSMutableArray* arr;

@end

@implementation GXInsertNilCase

-(instancetype)init
{
    self = [super init];
    NSMutableArray* arr = [NSMutableArray new];
    [arr addObject:nil];
    return self;
}

@end
