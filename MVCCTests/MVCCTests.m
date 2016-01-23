//
//  MVCCTests.m
//  MVCCTests
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HomeController.h"
#import "MockHomeViewController.h"
#import "MockDetailViewController.h"
#import "MockViewControllerFactory.h"
#import "DetailController.h"
#import "DetailViewController.h"
#import "Item.h"

@interface MVCCTests : XCTestCase

@property (nonatomic, strong, nonnull) HomeController *homeController;
@property (nonatomic, strong, nonnull) MockHomeViewController *mockViewController;
@property (nonatomic, strong, nonnull) MockViewControllerFactory *mockViewControllerFactory;
@property (nonatomic, strong, nonnull) Item *selectedItem;
@end

@implementation MVCCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

    _selectedItem = [Item itemWithIdentifier:@"2" name:@"Two"];
    _mockViewController = [[MockHomeViewController alloc] init];
    _mockViewControllerFactory = [[MockViewControllerFactory alloc] init];
    _homeController = [HomeController controllerWithViewController:_mockViewController];
    _homeController.factory = _mockViewControllerFactory;
    _homeController.items = @[
                              [Item itemWithIdentifier:@"1" name:@"One"],
                              _selectedItem,
                              [Item itemWithIdentifier:@"3" name:@"Three"],
                              ];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInitial {
    XCTAssertNil(_homeController.detailController);
    XCTAssertEqual(_mockViewController.pushCount, 0);
    XCTAssertEqual(_mockViewController.presentCount, 0);
    XCTAssertEqual(_mockViewController.reloadCount, 1);
    XCTAssertNotNil(_homeController.factory);
}

- (void)testReloadCount {
    XCTAssertEqual(_mockViewController.reloadCount, 1);
}

- (void)testSelectionThenPush {
    [_homeController itemSelected:_selectedItem];
    XCTAssertNotNil(_homeController.detailController);
    XCTAssertEqual(_mockViewController.pushCount, 1);
    XCTAssertNotNil(_homeController.detailController.viewController);
    XCTAssertEqualObjects([_homeController.detailController.viewController title], @"Two");
    XCTAssertEqual(_homeController.detailController.parentController, _homeController);
    [_homeController.detailController close];
    XCTAssertNil(_homeController.detailController);
    XCTAssertEqual(_mockViewController.popCount, 1);
}

@end
