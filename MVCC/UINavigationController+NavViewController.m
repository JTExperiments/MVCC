//
//  UINavigationController+NavViewController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "UINavigationController+NavViewController.h"
#import "UIViewController+ViewController.h"

@implementation UINavigationController (NavViewController)

+ (id<NavViewController>)navViewControllerWithViewController:(UIViewController <ViewController> *)viewController {
    return [[UINavigationController alloc] initWithRootViewController:viewController];
}

- (void)setRootViewController:(UIViewController <ViewController> *)rootViewController {
    [[self childViewControllers] enumerateObjectsUsingBlock:^(__kindof UIViewController * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromParentViewController];
    }];
    [self addChildViewController:rootViewController];
}

- (UIViewController *)rootViewController {
    return [[self childViewControllers] firstObject];
}

@end
