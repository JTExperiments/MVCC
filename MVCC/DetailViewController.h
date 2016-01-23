//
//  DetailViewController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "UIViewController+ViewController.h"

@class DetailController;

@protocol DetailViewController <ViewController>

@property (nonatomic, weak) DetailController *controller;

@end


@interface DetailViewController : ViewController <DetailViewController>

@property (nonatomic, weak) DetailController *controller;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;

@end
