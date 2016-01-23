//
//  ViewController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ViewController <NSObject>

@property (nonatomic, weak) id controller;
@property (nonatomic, copy) NSString *title;

- (void)presentViewController:(id <ViewController>)controller;
- (void)pushViewController:(id <ViewController>)controller;
- (void)popViewController;

@end

#import <UIKit/UIKit.h>

@interface ViewController <ObjectType> : UIViewController

@property (nonatomic, weak) ObjectType controller;

@end
