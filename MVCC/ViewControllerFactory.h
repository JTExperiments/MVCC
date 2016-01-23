//
//  ViewControllerFactory.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailViewController.h"
#import "NavViewController.h"
#import "HomeViewController.h"

@protocol ViewControllerFactory <NSObject>

- (id <ViewController>)viewController;
- (id <NavViewController>)navViewControllerWithViewController:(id <ViewController>)viewController;
- (id <DetailViewController>)detailViewController;
- (id <HomeViewController>)homeViewController;

@end


@interface ViewControllerFactory : NSObject <ViewControllerFactory>

@end
