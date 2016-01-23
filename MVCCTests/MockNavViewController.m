//
//  MockNavViewController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "MockNavViewController.h"


@interface MockNavViewController ()

@end

@implementation MockNavViewController

+ (id<NavViewController>)navViewControllerWithViewController:(id<ViewController>)viewController {
    MockNavViewController *navController = [[self alloc] initWithRootViewController:viewController];
    return navController;
}

- (instancetype)initWithRootViewController:(id<ViewController>)viewController {
    self = [super init];
    if (self) {
        _rootViewController = viewController;
    }
    return self;
}

@end
