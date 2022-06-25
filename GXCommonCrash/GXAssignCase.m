//
//  GXAssignCase.m
//  GXCommonCrash
//
//  Created by 谢泽昌 on 2022/6/25.
//

#import "GXAssignCase.h"

@interface GXAssignCase()

@property (nonatomic, assign) NSString* info;

@end

@implementation GXAssignCase

-(instancetype)init
{
    self = [super init];
    self.info = [NSString stringWithFormat:@"%@", @"asdfghjklzxcvbnm"];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"%@", self.info);
    });
    
    return self;
}

@end
