//
//  StackTestTests.m
//  StackTestTests
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 juyuanGroup. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Stack.h"

@interface StackTestTests : XCTestCase

@end

@implementation StackTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertNotNil([Stack class],@"asdasdas");
}

- (void)testStackObjectCanBeCreated
{
    Stack *stack = [Stack new];
    XCTAssertNotNil(stack,@"Stack Object can be created");
}

- (void)testKiwiemo
{

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
