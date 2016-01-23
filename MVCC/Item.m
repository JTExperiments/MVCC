//
//  Item.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "Item.h"

@implementation Item

+ (instancetype)itemWithIdentifier:(NSString *)identifier name:(NSString *)name {
    Item *item = [[self alloc] init];
    item.identifier = identifier;
    item.name = name;
    return item;
}

@end
