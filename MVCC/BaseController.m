//
//  BaseController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "BaseController.h"

@implementation BaseController

+ (instancetype)controllerWithViewController:(id <ViewController>)viewController {
    BaseController *controller = [[self alloc] init];
    controller.viewController = viewController;
    viewController.controller = controller;
    return controller;
}

- (void)presentController:(BaseController *)controller {
    controller.parentController = self;
    controller.presentingController = self;
    self.presentedController = controller;
    [self.viewController presentViewController:controller.viewController];
}

- (void)pushController:(BaseController *)controller {
    controller.parentController = self;
    [self.viewController pushViewController:controller.viewController];
}

- (void)popController {
    [self.parentController.viewController popViewController];
    [self.parentController controllerDidPop:self];
    self.parentController = nil;
}

- (void)controllerDidPop:(BaseController *)controller {
    
}

@end
