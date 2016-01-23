//
//  MockViewControllerFactory.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "MockViewControllerFactory.h"
#import "MockDetailViewController.h"
#import "MockNavViewController.h"
#import "MockHomeViewController.h"
#import "MockViewController.h"

@implementation MockViewControllerFactory

- (id <ViewController>)viewController {
    return [[MockViewController alloc] init];
}

- (id <DetailViewController>)detailViewController {
    return [[MockDetailViewController alloc] init];
}

- (id <NavViewController>)navViewControllerWithViewController:(id<ViewController>)viewController {
    return [MockNavViewController navViewControllerWithViewController:viewController];
}

- (id <HomeViewController>)homeViewController {
    return [[MockHomeViewController alloc] init];
}

@end
