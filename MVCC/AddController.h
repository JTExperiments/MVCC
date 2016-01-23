//
//  AddController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseController.h"
#import "AddControllerDelegate.h"

@class Item;
@class AddController;

@interface AddController : BaseController

@property (nonatomic, weak) id <AddControllerDelegate> delegate;

- (void)addItem:(Item *)item;

@end
