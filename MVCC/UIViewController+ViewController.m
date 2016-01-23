//
//  UIViewController+ViewController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "UIViewController+ViewController.h"

@implementation UIViewController (ViewController)
@dynamic controller;

- (void)presentViewController:(UIViewController <ViewController> *)controller {
    [self presentViewController:controller
                       animated:YES
                     completion:nil];
}

- (void)pushViewController:(UIViewController <ViewController> *)controller {
    [self.navigationController pushViewController:controller
                                         animated:YES];
}

- (void)popViewController {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
