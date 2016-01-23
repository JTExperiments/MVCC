//
//  ViewControllerFactory.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerFactory.h"
#import "UIViewController+ViewController.h"
#import "UINavigationController+NavViewController.h"

@implementation ViewControllerFactory

- (id <ViewController>)viewController {
    return [[UIViewController alloc] init];
}

- (id<AddViewController>)addViewController {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:@"AddViewController"];
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
