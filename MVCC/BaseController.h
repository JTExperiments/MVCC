//
//  BaseController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "ViewControllerFactory.h"

@interface BaseController <ObjectType> : NSObject

@property (nonatomic, strong) ObjectType viewController;
@property (nonatomic, strong) id <ViewControllerFactory> factory;
@property (nonatomic, weak) BaseController *parentController;
@property (nonatomic, strong) BaseController *presentedController;
@property (nonatomic, weak) BaseController *presentingController;

- (void)presentController:(BaseController *)controller;
- (void)pushController:(BaseController *)controller;
- (void)popController;
- (void)controllerDidPop:(BaseController *)controller;
+ (instancetype)controllerWithViewController:(ObjectType)viewController;

@end
