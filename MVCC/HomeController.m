//
//  HomeController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "HomeController.h"
#import "DetailController.h"
#import "AddController.h"

@interface HomeController ()

@property (nonatomic, strong) NSMutableArray *mutableItems;

@end

@implementation HomeController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutableItems = [NSMutableArray array];
    }
    return self;
}

- (NSArray *)items {
    return [_mutableItems copy];
}

- (void)addItem:(Item *)item {
    [_mutableItems addObject:item];
    [self.viewController reloadDataWithItems:[self items]];
}

- (void)setItems:(NSArray *)items {
    _mutableItems = [items mutableCopy];
    [self.viewController reloadDataWithItems:items];
}

- (void)itemSelected:(Item *)item {
    DetailController *detailController = [DetailController controllerWithViewController:[self.factory detailViewController]];
    self.detailController = detailController;
    self.detailController.item = item;
    [self pushController:detailController];
}

- (void)controllerDidPop:(BaseController *)controller {
    if (_detailController == controller) {
        _detailController = nil;
    }
}

- (void)startAddingItem {
    _addController  = [[AddController alloc] init];
    _addController.delegate = self;
    [self presentController:_addController];
}

#pragma mark AddControllerDelegate

- (void)addController:(AddController *)addController didAddItem:(Item *)item {
    [self addItem:item];
}

@end
