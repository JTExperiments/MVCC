//
//  MockViewController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface MockViewController : NSObject <ViewController>

@property (nonatomic, weak) id controller;
@property (nonatomic, copy) NSString *title;

@property (nonatomic) NSUInteger pushCount;
@property (nonatomic) NSUInteger presentCount;
@property (nonatomic) NSUInteger popCount;

@end
