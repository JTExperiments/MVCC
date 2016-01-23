//
//  AddItemTests.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AddController.h"
#import "HomeController.h"
#import "MockViewControllerFactory.h"
#import "Item.h"

@interface AddItemTests : XCTestCase

@property (nonatomic, strong, nonnull) HomeController *homeController;

@end

@implementation AddItemTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

    _homeController = [[HomeController alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInitial {
    XCTAssertNotNil(_homeController.items);
    XCTAssertEqual(_homeController.items.count, 0);
}

- (void)testStartAddingItem {
    [_homeController startAddingItem];
    AddController *addController = _homeController.addController;
    XCTAssertNotNil(addController);
    XCTAssertEqualObjects(addController.delegate, _homeController);
    Item *item = [Item itemWithIdentifier:@"4" name:@"Four"];
    [addController addItem:item];
    XCTAssertEqual(_homeController.items.count, 1);
    XCTAssertEqualObjects([_homeController.items lastObject], item);
}


@end
