//
//  HomeController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseController.h"
#import "HomeViewController.h"

@class Item;
@class DetailController;

@interface HomeController : BaseController

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) DetailController *detailController;

- (void)itemSelected:(Item *)item;

@end
