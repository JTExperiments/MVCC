//
//  AddControllerDelegate.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

@class AddController;
@class Item;

@protocol AddControllerDelegate <NSObject>

- (void)addController:(AddController *)addController didAddItem:(Item *)item;

@end