//
//  AddController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "AddController.h"
#import "Item.h"

@implementation AddController

- (void)addItem:(Item *)item {
    [self.delegate addController:self didAddItem:item];
}

@end
