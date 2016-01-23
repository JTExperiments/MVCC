//
//  MockNavViewController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NavViewController.h"

@interface MockNavViewController : NSObject <NavViewController>


@property (nonatomic, strong) id <ViewController> rootViewController;

@end
