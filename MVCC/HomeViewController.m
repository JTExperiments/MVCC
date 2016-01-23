//
//  HomeViewController.m
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import "HomeViewController.h"
#import "Item.h"
#import "HomeController.h"

@interface HomeViewController ()

@property (nonatomic, strong) NSArray <Item *> *items;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.items = @[
                   [Item itemWithIdentifier:@"1" name:@"One"],
                   [Item itemWithIdentifier:@"2" name:@"Two"],
                   [Item itemWithIdentifier:@"3" name:@"Three"],
                   ];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return (self.items != nil) ? 1 : 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuseIdentifier = @"identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if ( ! cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:reuseIdentifier];
    }
    Item *item = self.items[indexPath.row];
    cell.textLabel.text = item.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Item *item = self.items[indexPath.row];
    [self.controller itemSelected:item];
}

@end
