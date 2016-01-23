//
//  NavViewController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "ViewController.h"

@protocol NavViewController <ViewController>

+ (id <NavViewController>)navViewControllerWithViewController:(id <ViewController>)viewController;
- (instancetype)initWithRootViewController:(id <ViewController>)viewController;
@property (nonatomic, strong) id <ViewController> rootViewController;

@end

