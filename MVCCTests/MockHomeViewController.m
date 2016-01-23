//
//  MockHomeViewController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "MockHomeViewController.h"

@implementation MockHomeViewController

- (void)reloadDataWithItems:(NSArray<Item *> *)items {
    _reloadCount++;
}

@end
