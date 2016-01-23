//
//  MockViewController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "MockViewController.h"

@implementation MockViewController

- (void)pushViewController:(id<ViewController>)controller {
    _pushCount++;
}

- (void)presentViewController:(id<ViewController>)controller {
    _presentCount++;
}

- (void)popViewController {
    _popCount++;
}

@end
