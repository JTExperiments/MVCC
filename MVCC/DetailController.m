//
//  DetailController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "DetailController.h"
#import "ViewController.h"
#import "Item.h"

@implementation DetailController

- (void)setItem:(Item *)item {
    _item = item;
    [self.viewController setTitle:item.name];
}

- (void)close {
    [self popController];
}

@end
