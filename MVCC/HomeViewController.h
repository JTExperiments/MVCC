//
//  HomeViewController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@class Item;
@class HomeController;

@protocol HomeViewController <ViewController>

@property (weak, nonatomic) HomeController *controller;
- (void)reloadDataWithItems:(NSArray <Item *> *)items;

@end

@interface HomeViewController : UIViewController <HomeViewController, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) HomeController *controller;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
