//
//  BaseControllerTests.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MockViewControllerFactory.h"
#import "MockViewController.h"
#import "BaseController.h"

@interface BaseControllerTests : XCTestCase

@property (nonatomic, strong) BaseController *baseController;
@property (nonatomic, strong) BaseController *presentedController;

@end

@implementation BaseControllerTests

- (void)setUp {
    [super setUp];

    _baseController = [[BaseController alloc] init];
    _presentedController = [[BaseController alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPushController {
    [_baseController pushController:_presentedController];
    XCTAssertEqualObjects(_presentedController.parentController, _baseController);
}


- (void)testPresentController {
    [_baseController presentController:_presentedController];
    XCTAssertEqualObjects(_baseController.presentedController, _presentedController);
    XCTAssertEqualObjects(_presentedController.parentController, _baseController);
    XCTAssertEqualObjects(_presentedController.presentingController, _baseController);
}

@end
