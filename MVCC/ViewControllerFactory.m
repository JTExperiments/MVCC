//
//  ViewControllerFactory.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "ViewControllerFactory.h"
#import <UIKit/UIKit.h>
#import "UIViewController+ViewController.h"
#import "UINavigationController+NavViewController.h"

@implementation ViewControllerFactory

- (id <ViewController>)viewController {
    return [[UIViewController alloc] init];
}

- (id<DetailViewController>)detailViewController {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
}

- (id<HomeViewController>)homeViewController {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
}

- (UINavigationController <NavViewController> *)navViewControllerWithViewController:(UIViewController <ViewController> *)viewController {
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    return navController;
}

@end
