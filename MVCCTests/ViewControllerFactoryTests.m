//
//  ViewControllerFactoryTests.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewControllerFactory.h"
#import "NavViewController.h"
#import "MockViewControllerFactory.h"
#import "MockViewController.h"

@interface ViewControllerFactoryTests : XCTestCase

@property (nonatomic, strong) id <ViewControllerFactory> factory;

@end

@implementation ViewControllerFactoryTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

    _factory = [[ViewControllerFactory alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDetailView {
    id <ViewController> vc = [_factory detailViewController];
    XCTAssertNotNil(vc);
    XCTAssertTrue([vc conformsToProtocol:@protocol(DetailViewController)]);
}

- (void)testHomeView {
    id <ViewController> vc = [_factory homeViewController];
    XCTAssertNotNil(vc);
    XCTAssertTrue([vc conformsToProtocol:@protocol(HomeViewController)]);
}

- (void)testViewController {
    id <ViewController> vc = [_factory viewController];
    XCTAssertNotNil(vc);
    XCTAssertTrue([vc conformsToProtocol:@protocol(ViewController)]);
}

- (void)testAddView {
    id <AddViewController> vc = [_factory addViewController];
    XCTAssertNotNil(vc);
    XCTAssertTrue([vc conformsToProtocol:@protocol(AddViewController)]);
}

- (void)testNavigationView {
    id <ViewController> vc = [_factory viewController];
    id <NavViewController> nvc = [_factory navViewControllerWithViewController:vc];
    XCTAssertNotNil(nvc);
    XCTAssertTrue([nvc conformsToProtocol:@protocol(NavViewController)]);
    XCTAssertEqualObjects(nvc.rootViewController, vc);
}

@end
