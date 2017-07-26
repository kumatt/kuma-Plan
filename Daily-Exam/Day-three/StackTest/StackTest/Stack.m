//
//  Stack.m
//  StackTest
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 juyuanGroup. All rights reserved.
//

#import "Stack.h"
@interface Stack ()

@property (nonatomic,strong) NSMutableArray *numbers;

@end

@implementation Stack

- (void)push:(double)num
{
    [self.numbers addObject:@(num)];
}

- (double)top
{
    return [self.numbers.lastObject doubleValue];
}

- (double)pop
{
    double result = [self top];
    [self.numbers removeLastObject];
    return result;
}

- (NSMutableArray *)numbers
{
    if (_numbers == nil) {
        _numbers = [NSMutableArray new];
    }
    return _numbers;
}

- (NSInteger)count
{
    return self.numbers.count;
}

@end
