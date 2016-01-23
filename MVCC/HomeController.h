//
//  HomeController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseController.h"
#import "AddControllerDelegate.h"

@class Item;
@class DetailController;
@class AddController;

@interface HomeController : BaseController <AddControllerDelegate>

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) DetailController *detailController;
@property (nonatomic, strong) AddController *addController;

- (void)itemSelected:(Item *)item;
- (void)startAddingItem;

@end
