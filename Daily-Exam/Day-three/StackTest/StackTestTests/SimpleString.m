//
//  SimpleString.m
//  StackTest
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 juyuanGroup. All rights reserved.
//

#import <Kiwi.h>
#import "Stack.h"


SPEC_BEGIN(SimpleStringSpec)

describe(@"Stack", ^{
    
    context(@"when newly created", ^{
        
        __block Stack *stack = nil;
        beforeEach(^{
            stack = [Stack new];
        });
        afterEach(^{
            stack = nil;
        });
        
        it(@"should have the class Stack", ^{
            [[[Stack class] shouldNot]beNil];
        });
        
        it(@"should exist", ^{
            [[stack shouldNot]beNil];
        });
        
        it(@"should be able to push and get top", ^{
            [stack push:2.3];
            [[theValue([stack top]) should]equal:theValue(2.3)];
            
            [stack push:4.6];
            [[theValue([stack top])should]equal:4.6 withDelta:0.001];
        });
    });
});

context(@"when new created and pushed 4.6", ^{
    __block Stack *stack = nil;
    beforeEach(^{
        stack = [Stack new];
        [stack push:4.6];
    });
    afterEach(^{
        stack = nil;
    });
    
    it(@"can be poped and the value equals 4.6", ^{
        
        [[theValue([stack pop]) should]equal:theValue(4.6)];
        
    });
    
    it(@"should contains 0 element after pop", ^{
        [stack pop];
        [[stack should]beEmpty];
    });
});


SPEC_END
