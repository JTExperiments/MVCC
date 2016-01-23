//
//  MockHomeViewController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MockViewController.h"
#import "HomeController.h"

@interface MockHomeViewController : MockViewController <HomeViewController>
@property (nonatomic) NSUInteger reloadCount;

@end
