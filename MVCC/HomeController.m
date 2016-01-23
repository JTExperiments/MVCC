//
//  HomeController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "HomeController.h"
#import "DetailController.h"

@implementation HomeController

- (void)setItems:(NSArray *)items {
    _items = items;
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

@end
